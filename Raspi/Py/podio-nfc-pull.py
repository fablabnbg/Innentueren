#! /usr/bin/python3
#
# podio-nfc-sync.py -- a script to pull NFC data from podio.
#
# (C) 2021 juergen@fabmail.org
#
# 2021-09-13 jw,   v0.1         initial draught
# 2021-09-15 jw,   v0.2         yammel done, author & date added.
#
#
# References:
# - https://developers.podio.com/doc/items/filter-items-4496747
# - https://github.com/podio/podio-py/blob/master/pypodio2/areas.py#L81
# - https://pyyaml.org/wiki/PyYAMLDocumentation#Dumper
#
#
# Output format example
# =====================
# %YAML 1.0
# ---
# tokens:
#   04074e32656080:
#   - Lager
#   - Werkstatt
#   - Küche
#   - REM/Serverraum
#   - Getränkelager
#   - Dunkelkammer
#   - Besprechungszimmer
#   041b4e32656080:
#   - Besprechungszimmer
#   - Lager
#   ...



import sys,os,re
import yaml, time
import pprint

try:
  from pypodio2 import api
except:
  print("%s requires pypodio2. Import failed. Try install with e.g." % sys.argv[0])
  print("  pip3 install -e 'git+https://github.com/podio/podio-py.git#egg=podio-py'")
  sys.exit(0)

outfile = 'idoors.yml'
podio_src_ref = 'https://podio.com/fablab-nuernberg/administrativ/apps/nfc'
now = time.strftime("%Y-%m-%d %H:%M", time.localtime())


podio_app_id = '13414993'
podio_client_id = 'nfc-pull'

# Restrict data access to the needed Minimum:
# Only columns, "ID", "Ablaufdatum", "Schluesselgewalt Lab",
# Only rows where 3rd column is non-empty.
# view must be shared with team, so that the API can access it.
podio_view_id = '51148009'

try:
  podio_app_token =     os.environ['PODIO_NFC_APP_TOKEN']
  podio_client_secret = os.environ['PODIO_CLIENT_SECRET']
except:
  print("%s needs the following environment variables:" % sys.argv[0])
  print("  PODIO_NFC_APP_TOKEN (for nfc app %s)" % podio_app_id)
  print("  PODIO_CLIENT_SECRET (for client %s)"  % podio_client_id)
  sys.exit(0)


nfc = api.OAuthAppClient(podio_client_id, podio_client_secret, podio_app_id, podio_app_token)

def fmt_value(field):
  val = []
  for v in field['values']:
    if field['type'] == 'text':
      val.append("'" + v['value'] + "'")
    elif field['type'] == 'category':
      val.append("'" + v['value']['text'] + "' (id=%d)" % v['value']['id'])
    elif field['type'] == 'app':
      val.append("'" + v['value']['app']['name'] + "' (app_id=%d)" % v['value']['app']['app_id'])
    else:
      val.append("<ERROR: field type '%s' unknown>" % field['type'])

  if len(field['values']) == 1:
    return val[0]
  else:
    # support multi-value items, never seen one so far...
    r = '['
    for v in val:
      r = r + ' "' + v + '",'
    if r != '[': r = r[:-1]
    r = r + ']'
  return r

# Dump everything:
if 1:
  all=nfc.Item.filter(int(podio_app_id),{})
  for item in all['items']:
    print("Item title: %s (revision %d, %s)" % (item['title'], item['revision'], item['last_event_on']))
    for field in item['fields']:
      type = field['type'][:3].upper()
      if type == 'TEX': type = 'TXT'
      val = fmt_value(field)
      # field['external_id'] is usually similar to label, but all lower case and with underscores.
      print("\t%s: label=%-20s\tvalue=%s" % (type, field['label'], val))

  sys.exit(0)

### No longer works since 2021-12-05
# view = nfc.View.get(podio_app_id, podio_view_id)
# { 'layout': None, 'name': 'nfc-idoor-map', 'rights': ['view'], 'fields': {...},
# 'sort_desc': False, 'created_by': {'user_id': 1897226, 'space_id': None, 'image': {'hosted_by': 'podio', 'hosted_by_humanized_name': 'Podio', 'thumbnail_link': 'https://d2cmuesa4snpwn.cloudfront.net/public/75327291', 'link': 'https://d2cmuesa4snpwn.cloudfront.net/public/75327291', 'file_id': 75327291, 'external_file_id': None, 'link_target': '_blank'}, 'profile_id': 106279389, 'org_id': None, 'link': 'https://podio.com/users/1897226', 'avatar': 75327291, 'type': 'user', 'last_seen_on': '2021-09-13 22:17:05', 'name': 'Jürgen Weigert'},
# 'sort_by': 108564583, 'created_on': '2021-09-13 22:15:29', 'private': False,
# 'filters': [
#   { 'humanized_values': [{'value': 1, 'label': 'Lager'}, {'value': 2, 'label': 'Werkstatt'}, {'value': 3, 'label': 'Küche'}, {'value': 4, 'label': 'REM/Serverraum'}, {'value': 5, 'label': 'Getränkelager'}, {'value': 6, 'label': 'Dunkelkammer'}, {'value': 7, 'label': 'Besprechungszimmer'}, {'value': 8, 'label': 'Kompressorraum'}, {'value': 9, 'label': 'Abstellkammer'}],
#     'values': [1, 2, 3, 4, 5, 6, 7, 8, 9], 'key': 226287718}], 'filter_id': 51148009, 'groupings': {}, 'type': 'saved', 'view_id': 51148009, 'grouping': {}}
#
## Bummer: This view object can filter rows. But the actual view in podio can filter on both, rows and columns.
## Hmm, let's do that manually for now.

idoor_tokens = {}

all = nfc.Item.filter_by_view(podio_app_id, podio_view_id)

for item in all['items']:
  ##
  # item[['fields'][1] = {'type': 'text', 'field_id': 102728296, 'label': 'ID', 'values': [{'value': '04 49 30 32 65 60 80'}], 'config': {'settings': {'format': 'plain', 'size': 'small'}, 'mapping': None, 'label': 'ID'}, 'external_id': 'titel'}
  # item[['fields'][5] = {'type': 'category', 'field_id': 226287718, 'label': 'Schlüsselgewalt Lab', 'values': [{'value': {'status': 'active', 'text': 'Werkstatt', 'id': 2, 'color': 'F7D1D0'}}, {'value': {'status': 'active', 'text': 'Dunkelkammer', 'id': 6, 'color': 'E1D8ED'}}, {'value': {'status': 'active', 'text': 'Kompressorraum', ...
  ##
  id = None
  doors = []
  for field in item['fields']:
    if field['field_id'] == 102728296:          # ID
      id = field['values'][0]['value']          # That is how podio likes to do things.
      id = re.sub('[:\s]', '', id)              # strip any whitespace
    if field['field_id'] == 226287718:          # Schlüsselgewalt Lab
      for val in field['values']:
        value = val['value']
        if value['status'] == 'active':
          doors.append(value['text'])           # or value['id'], for the numeric values seen in 'humanized_values in the view.
  if id is not None and len(doors):
    idoor_tokens[id] = doors

# Formatting nicely is possible, but hard: https://stackoverflow.com/questions/51976149/mixing-block-and-flow-formatting-in-yaml-with-python
# I can only guess the YAML-version. the system won't tell me.
with open(outfile, 'w') as fp:
  yaml.dump({'author': podio_src_ref, 'date': now, 'tokens': idoor_tokens},
            sort_keys=True, explicit_start=True, allow_unicode=True, version=[1,0], stream=fp)

print("%d entries written to '%s'" % (len(idoor_tokens), outfile))


