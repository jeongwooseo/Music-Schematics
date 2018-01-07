// Jeong Woo Seo
// P2.  
// 5/13/17 

// declare array 
[24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46] @=> int A[];
[1,1,1,1,1,1,1,1] @=> int notes[];

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
now + 1200::second => time later;

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
    notes[f]::second => now; // play 
    0x80 => msg.data1; // note off
    mout.send(msg); // send midi message
}