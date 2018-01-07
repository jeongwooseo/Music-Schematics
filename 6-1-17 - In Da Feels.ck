// Jeong Woo Seo
// P2.  
// 5/13/17 

// declare array 
[27, 27, 27, 27, 30, 32, 32, 32, 32, 34, 37, 37, 37, 37, 39, 39, 39, 39, 42, 42, 42, 42, 46, 46, 46, 46, 46] @=> int A[];
[3, 2, 4, 5, 6] @=> int notes[];

// P1
// sound netowrk s

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0); 

// create msg
MidiMsg msg;

// P2
// set time later value 
now + 200::second => time later;

// declare
int i, f;

// set seed
Math.srandom(1);

while (now < later)
{
    Math.random2(0, A.size()-1) => int i; // generate random
    Math.random2(0, notes.size()-1) => int f; // generate random
    <<< A[i], notes[f] >>>; // print 
    0x90 => msg.data1; // note on
    A[i] => msg.data2; // note values
    85 => msg.data3; // velocity 
    mout.send(msg); // send message
    notes[f]::second =>  now; // play 
    0x80 => msg.data1; // note off
    mout.send(msg); // send midi message
}