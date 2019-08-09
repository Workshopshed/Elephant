#include <ESP32Servo.h>
#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>
#include <ESPmDNS.h>
#include "Secrets.h"

const char *ssid = SECRET_SSID;
const char *password = SECRET_PASS;
const char PROGMEM *webpage = "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>Elephant Control Panel</title><script>function move(dir){document.getElementById(\"response\").innerHTML=dir; var xhr=new XMLHttpRequest(); xhr.timeout=500; xhr.ontimeout=function (e){document.getElementById(\"response\").innerHTML=\"Elephant not responding\";}; xhr.onreadystatechange=function(){if (this.readyState==4){document.getElementById(\"response\").innerHTML=this.responseText;}}; xhr.open(\"POST\", \"/\" + dir, true); xhr.send();}</script></head><body> <nav> <p> <button type=\"button\" onclick=\"move('left')\">&lt;</button> <button type=\"button\" onclick=\"move('forward')\">^</button> <button type=\"button\" onclick=\"move('right')\">&gt;</button> </p><p><button type=\"button\" onclick=\"move('stop')\">Stop</button></p></nav> <p id=\"response\"></p></body></html>";

Servo myservo[4];
int strideLeft;
int strideRight;

const int strideShort = 20;
const int strideLong = 45;
const int strideStopped = 0;
const int middlePosition = 90;

WebServer server(80);

void setup(void) {
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp32")) {
    Serial.println("MDNS responder started");
  }

  server.on("/", []() {
    server.send(200, "text/html", webpage);
  });

  server.on("/left", []() {
    strideLeft = strideShort;
    strideRight = strideLong;
    server.send(200, "text/plain", "Turning Left");
  });
  
  server.on("/right", []() {
    strideLeft = strideLong;
    strideRight = strideShort;
    server.send(200, "text/plain", "Turning Right");
  });

  server.on("/forward", []() {
    strideLeft = strideLong;
    strideRight = strideLong;
    server.send(200, "text/plain", "Straight on");
  });

  server.on("/stop", []() {
    strideLeft = strideStopped;
    strideRight = strideStopped;
    server.send(200, "text/plain", "Stopping");
  });

  server.begin();
  Serial.println("HTTP server started");

  myservo[0].attach(25); //D2  
  myservo[1].attach(26); //D3  
  myservo[2].attach(27); //D4  
  myservo[3].attach(9); //D5  

  myservo[0].write(middlePosition);
  myservo[1].write(middlePosition);
  myservo[2].write(middlePosition);
  myservo[3].write(middlePosition);

  strideLeft = strideStopped;
  strideRight = strideStopped;
}

void loop(void) {
  server.handleClient();

  if (strideLeft != strideStopped) {
    
    //Front right and rear left legs forward
    for (int pos = 0; pos <= 45; pos += 1) { 
          if (pos < strideRight) { myservo[0].write(middlePosition + pos); }
          if (pos < strideLeft)  { myservo[2].write(middlePosition - pos); }
          delay(15);
      }
    //Front left and rear right forward
    for (int pos = 0; pos <= 45; pos += 1) { 
          if (pos < strideRight) { myservo[1].write(middlePosition + pos); }
          if (pos < strideLeft)  { myservo[3].write(middlePosition - pos); }
          delay(15);
      }   
    //Front right and rear left backwards
    for (int pos = 45; pos > 0; pos -= 1) { 
          if (pos < strideRight) { myservo[0].write(middlePosition + pos); }
          if (pos < strideLeft)  { myservo[2].write(middlePosition - pos); }
          delay(15);
      }
    //Front left and rear right backwards
    for (int pos = 45; pos > 0; pos -= 1) { 
          if (pos < strideRight) { myservo[1].write(middlePosition + pos); }
          if (pos < strideLeft)  { myservo[3].write(middlePosition - pos); }
          delay(15);
      }   
  }
}
