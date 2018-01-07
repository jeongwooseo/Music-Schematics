//Jeong Woo Seo
//Understanding Midi
//5/9/17

//Q1: What line in this code is not allowing me to play this? 

//create object
MidiOut mout;
//connect to port 0
mout.open(0);

//create msg
MidiMsg msg;

//set msg values 
0x90 => msg.data1; //note on
440 => msg.data2; //note values
127 => msg.data3; //velocity 

//play for 1 second
1::second => now;

//send message 
mout.send(msg);

//note off 
0x80 => msg.data1;