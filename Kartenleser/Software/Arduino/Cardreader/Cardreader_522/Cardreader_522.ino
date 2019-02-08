/*
 * --------------------------------------------------------------------------------------------------------------------
 * Example sketch/program showing how to read data from a PICC to serial.
 * --------------------------------------------------------------------------------------------------------------------
 * This is a MFRC522 library example; for further details and other examples see: https://github.com/miguelbalboa/rfid
 * 
 * Example sketch/program showing how to read data from a PICC (that is: a RFID Tag or Card) using a MFRC522 based RFID
 * Reader on the Arduino SPI interface.
 * 
 * When the Arduino and the MFRC522 module are connected (see the pin layout below), load this sketch into Arduino IDE
 * then verify/compile and upload it. To see the output: use Tools, Serial Monitor of the IDE (hit Ctrl+Shft+M). When
 * you present a PICC (that is: a RFID Tag or Card) at reading distance of the MFRC522 Reader/PCD, the serial output
 * will show the ID/UID, type and any data blocks it can read. Note: you may see "Timeout in communication" messages
 * when removing the PICC from reading distance too early.
 * 
 * If your reader supports it, this sketch/program will read all the PICCs presented (that is: multiple tag reading).
 * So if you stack two or more PICCs on top of each other and present them to the reader, it will first output all
 * details of the first and then the next PICC. Note that this may take some time as all data blocks are dumped, so
 * keep the PICCs at reading distance until complete.
 * 
 * @license Released into the public domain.
 * 
 * Typical pin layout used:
 * -----------------------------------------------------------------------------------------
 *             MFRC522      Arduino       Arduino   Arduino    Arduino          Arduino
 *             Reader/PCD   Uno/101       Mega      Nano v3    Leonardo/Micro   Pro Micro
 * Signal      Pin          Pin           Pin       Pin        Pin              Pin
 * -----------------------------------------------------------------------------------------
 * RST/Reset   RST          9             5         D9         RESET/ICSP-5     RST
 * SPI SS      SDA(SS)      10            53        D10        10               10
 * SPI MOSI    MOSI         11 / ICSP-4   51        D11        ICSP-4           16
 * SPI MISO    MISO         12 / ICSP-1   50        D12        ICSP-1           14
 * SPI SCK     SCK          13 / ICSP-3   52        D13        ICSP-3           15
 */

#include <SPI.h>
#include <MFRC522.h>
#include <Tone.h>

#define RST_PIN         9          // Configurable, see typical pin layout above 3
#define SS_PIN          10         // Configurable, see typical pin layout above 9

int notes[]            = { 30000 ,
                           NOTE_C4, NOTE_CS4, NOTE_D4, NOTE_DS4, NOTE_E4, NOTE_F4, NOTE_FS4, NOTE_G4, NOTE_GS4, NOTE_A4, NOTE_AS4, NOTE_B4,
                           NOTE_C5, NOTE_CS5, NOTE_D5, NOTE_DS5, NOTE_E5, NOTE_F5, NOTE_FS5, NOTE_G5, NOTE_GS5, NOTE_A5, NOTE_AS5, NOTE_B5,
                           NOTE_C6, NOTE_CS6, NOTE_D6, NOTE_DS6, NOTE_E6, NOTE_F6,
                           30000 };

uint8_t command[256]   = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
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
uint8_t commands       =   0;          // Count for commands in the command array. Equivelent to wcommand - rcommand
uint8_t wcommand       =   0;          // Writeindex for command array. Automaticaly wraps at array end.
uint8_t rcommand       =   0;          // Readindex for command array. Automaticaly wraps at array end.

MFRC522 mfrc522(SS_PIN, RST_PIN);      // Create MFRC522 instance
Tone    Player;                        // Create a Tone-Player instance

void setup() {
	Serial.begin(9600);		               // Initialize serial communications with the PC
	while (!Serial);		                 // Do nothing if no serial port is opened (added for Arduinos based on ATMEGA32U4)
	SPI.begin();			                   // Init SPI bus
	mfrc522.PCD_Init();		               // Init MFRC522
  Serial.print("#");
	mfrc522.PCD_DumpVersionToSerial();   // Show details of PCD - MFRC522 Card Reader details
	Serial.println(F("#Scan PICC to see SAK, UID and checksumm"));
  Player.begin(2);
  digitalWrite(8, HIGH);               // Red MSB off 
  digitalWrite(7, HIGH);               // RED LSB off
  digitalWrite(6, HIGH);               // Green MSB off
  digitalWrite(5, HIGH);               // Green LSB off
  digitalWrite(4, HIGH);               // Blue MSB off
  digitalWrite(3, HIGH);               // Blue LSB off
  pinMode(8, OUTPUT);                  // Red LED via 750 Ohm resistor
  pinMode(7, OUTPUT);                  // Red LED via 1.3 kOhm resistor
  pinMode(6, OUTPUT);                  // Green LED via 750 Ohm resistor
  pinMode(5, OUTPUT);                  // Green LED via 1,3 kOhm resistor
  pinMode(4, OUTPUT);                  // Blue LED via 750 Ohm resistor
  pinMode(3, OUTPUT);                  // Blue LED via 1.3kOhm resistor
}                                      // Common LED Anode goes to Vin = 5V


void serialEvent() {
  while (Serial.available()) {         // Is there another byte:
    char inChar = (char)Serial.read(); // Get it
    if (inChar == 0x00){               // Reset Code
      asm volatile ("  jmp 0");        // Reset Reader ( May also reset in disco() )
    }
    if (commands < 254) {              // Is room for another command ?
      command[wcommand] = inChar;      // Place command int the command-buffer
      wcommand++;                      // Go to the Place in the buffer
      commands++;                      // There is 1 command more in the buffer
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
	// Look for new cards
	if ( ! mfrc522.PICC_IsNewCardPresent()){ // There is no NFC Card in proximity
    if (! Player.isPlaying()){         // We dont play a tone
      if (commands > 0 ){              // And we have something to Play
        disco(command[rcommand]);      // Make some noise and light
        command[rcommand] = 0x00;      // Place a canary in the array so the writer knows the element is used
        rcommand++;                    // go to the next Place to read
        commands--;                    // Make room for new cammands as the last operation!
      } else{                          // There is nothing to play
        Player.stop();                 // Stop the Player
      }
	}
		return;
	}
 
	// Select one of the cards
	if ( ! mfrc522.PICC_ReadCardSerial()) {
		return;
	}
 
  Serial.print(mfrc522.uid.sak < 0x10 ? "0" : "");
  Serial.print(mfrc522.uid.sak, HEX);
  Serial.print(" ");
  uint8_t chk=mfrc522.uid.sak;
  for(int i=0;i<mfrc522.uid.size;i++){
    chk+=mfrc522.uid.uidByte[i];
  }
  dump_byte_array(mfrc522.uid.uidByte, mfrc522.uid.size);
  Serial.print(chk < 0x10 ? " 0" : " ");
  Serial.print(chk,HEX);
  mfrc522.PICC_HaltA();
  mfrc522.PCD_StopCrypto1();
  Serial.println();
}
