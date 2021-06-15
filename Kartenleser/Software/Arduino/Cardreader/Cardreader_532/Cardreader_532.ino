#include <Tone.h>


/**************************************************************************/
/*! 
    This example will wait for any ISO14443A card or tag, and
    depending on the size of the UID will attempt to read from it.
   
    If the card has a 4-byte UID it is probably a Mifare
    Classic card, and the following steps are taken:
   
    - Authenticate block 4 (the first block of Sector 1) using
      the default KEYA of 0XFF 0XFF 0XFF 0XFF 0XFF 0XFF
    - If authentication succeeds, we can then read any of the
      4 blocks in that sector (though only block 4 is read here)
   
    If the card has a 7-byte UID it is probably a Mifare
    Ultralight card, and the 4 byte pages can be read directly.
    Page 4 is read by default since this is the first 'general-
    purpose' page on the tags.

    To enable debug message, define DEBUG in PN532/PN532_debug.h
*/
/**************************************************************************/


#include <Wire.h>
#include <PN532_I2C.h>
#include <PN532.h>
#include <NfcAdapter.h>
#include <Tone.h>


int notes[]            = { 30000 ,
                           NOTE_C4, NOTE_CS4, NOTE_D4, NOTE_DS4, NOTE_E4, NOTE_F4, NOTE_FS4, NOTE_G4, NOTE_GS4, NOTE_A4, NOTE_AS4, NOTE_B4,
                           NOTE_C5, NOTE_CS5, NOTE_D5, NOTE_DS5, NOTE_E5, NOTE_F5, NOTE_FS5, NOTE_G5, NOTE_GS5, NOTE_A5, NOTE_AS5, NOTE_B5,
                           NOTE_C6, NOTE_CS6, NOTE_D6, NOTE_DS6, NOTE_E6, NOTE_F6,
                           30000 };

volatile uint8_t command[]      = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile uint8_t wcommand       =   0;
volatile uint8_t rcommand       =   0;



PN532_I2C intf(Wire);              // Create PN532_I2C instance
PN532 nfc = PN532(intf);           // Create PN532 instance
Tone    Player;                    // Create a Tone-Player instance

void setup() {
	Serial.begin(9600);		           // Initialize serial communications with the PC
	while (!Serial);		             // Do nothing if no serial port is opened (added for Arduinos based on ATMEGA32U4)
  pinMode(9, OUTPUT);              // nReset to PN532 Board
  digitalWrite(9, HIGH);
  digitalWrite(9, LOW);            // nReset High -> Low 
  delay(400);                      // keep nReset Low for a while
  digitalWrite(9, HIGH);           // end Reset
  nfc.begin();
  uint32_t versiondata = nfc.getFirmwareVersion();
  if (! versiondata) {
    Serial.println("#Didn't find PN53x board");
    delay(2000);
    asm volatile ("  jmp 0");        // Reset Reader
    //while (1); // halt
  } else {
    Serial.print("#Found chip PN5"); Serial.println((versiondata>>24) & 0xFF, HEX); 
    Serial.print("#Firmware ver. "); Serial.print((versiondata>>16) & 0xFF, DEC); 
    Serial.print('.'); Serial.println((versiondata>>8) & 0xFF, DEC);
  }
	Serial.println(F("#Scan PICC to see UID, SAK, type, and data blocks..."));
  nfc.SAMConfig();
  Player.begin(2);
  digitalWrite(8, HIGH);
  digitalWrite(7, HIGH);
  digitalWrite(6, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(3, HIGH);
  pinMode(8, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(3, OUTPUT);
}


void serialEvent() {
  while (Serial.available()) {         // Is there another byte
    // get the new byte:
    char inChar = (char)Serial.read(); // get it:
    if (inChar == 0x00){               // Reset Code
      asm volatile ("  jmp 0");        // Reset Reader ( May also reset in disco() )
    }
    if (wcommand+1!=rcommand) {              // Is room for another command ?
      command[wcommand] = inChar;      // Place command int the command-buffer
      wcommand++;                      // Go to the Place in the buffer
      if (command[wcommand] != 0) {    // There was no canary - we have to die
        asm volatile ("  jmp 0");      // Reset Reader. Ringbuffer is brocken
      }
    }
  }
}    


/**
 * Routine to switch LEDs and make Noise
 */
void disco(uint8_t effect) {
  if((effect>>7)==1){
    uint8_t noteindex = effect & 0x1F;             // Frequency
    uint8_t duraindex = (effect & 0x60) / 32;      // ld(Duration)
    Player.play(notes[noteindex],50 << duraindex);
    if (noteindex == 0){
      pinMode(2, INPUT);                           // It is not a tone but a pause
    }
  } else {
    if((effect>>6)==1){
      if(effect & 0x01){
        digitalWrite(3, LOW);}       // Blue LSB on
      else{
        digitalWrite(3, HIGH);       // Blue LSB off
      }
      if(effect & 0x02){
        digitalWrite(4, LOW);}       // Blue MSB on
      else{
        digitalWrite(4, HIGH);       // Blue MSB off
      }
      if(effect & 0x04){
        digitalWrite(5, LOW);}       // Green LSB on
      else{
        digitalWrite(5, HIGH);       // Green LSB off
      }
      if(effect & 0x08){
        digitalWrite(6, LOW);}       // Green MSB on
      else{
        digitalWrite(6, HIGH);       // Green MSB off
      }
      if(effect & 0x10){
        digitalWrite(7, LOW);}       // Red LSB on
      else{
        digitalWrite(7, HIGH);       // Red LSB off
      }
      if(effect & 0x20){
        digitalWrite(8, LOW);}       // Red MSB on
      else{
        digitalWrite(8, HIGH);       // Red MSB off
      }
    } else {
      switch(effect){
        case 0x00:                       // OH NO! I swallowed a canary, so i have to die
          asm volatile ("  jmp 0");      // Reset Reader. Ringbuffer is brocken
        break;
      default:
        break;
      }
    }
  }
}


/**
 * Helper routine to dump a byte array as hex values to Serial.
 */
void dump_byte_array(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? "0" : "");
    Serial.print(buffer[i], HEX);
  }
}

void loop() {
  uint8_t uid[] = { 0, 0, 0, 0, 0, 0, 0 };  // Buffer to store the returned UID
  uint8_t uidLength;                        // Length of the UID (4 or 7 bytes depending on ISO14443A card type)
  uint8_t sak;                              // SAK Value
  if (! Player.isPlaying()){
    if (rcommand != wcommand ){
      disco(command[rcommand]);      // Make some noise and light
      command[rcommand] = 0x00;      // Place a canary in the array
      rcommand++;                    // go to the next Place to read
    } else{
      Player.stop();
    }
  }
	// Look for new cards
  if (! nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, uid, &uidLength,7)){
    if (! Player.isPlaying()){
      if (rcommand != wcommand ){
        disco(command[rcommand]);      // Make some noise and light
        command[rcommand] = 0x00;      // Place a canary in the array
        rcommand++;                    // go to the next Place to read
      } else{
        Player.stop();
      }
	  }
		return;
	}
 uint8_t *pktbuf;
 uint8_t pktlen;
 pktbuf = nfc.getBuffer(&pktlen);
 //Serial.print(*pktbfr, HEX);
 Serial.print(pktbuf[4] < 0x10 ? "0" : "");
 Serial.print(pktbuf[4], HEX);
 Serial.print(" ");
 dump_byte_array(&uid[0], uidLength);
 uint8_t chk=pktbuf[4];
  
  for(int i=0;i<uidLength;i++){
    chk+=uid[i];
  }
  Serial.print(chk < 0x10 ? " 0" : " ");
  Serial.print(chk,HEX);
  Serial.println();
}
