// Jeong Woo Seo 
// 11/8/17
// SL Sleeps

// number of devices to open 
0 => int device; 

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0); 

// create msg
MidiMsg msg;

// if open fails quit
if (!mout.open( device ) )
    me.exit();

// print out device that was opened 
<<< "MIDI device;", mout.num(), " -> ", mout.name() >>>;

// create arrary (MIDI)
[50, 52, 53, 55, 57, 60, 62, 64, 65, 67, 69] @=> int A[];

// create array (velocity)
[80, 81, 82, 83, 84, 85, 86, 87] @=> int B[];

// create array (duration)
[1, 1, 1, 1, 1] @=> int C[];

// set time later value
now + 150 :: second => time later;

// declare i
int i, j, k;

// set seed 
Math.srandom(1);

while ( now < later )
{
    Math.random2(0, A.size()-1) => int i; // generate random (MIDI)
    Math.random2(0, B.size()-1) => int j; // generate random (velocity)
    Math.random2(0, C.size()-1) => int k; // generate random (Duration)
    0x90 => msg.data1; // note on
    A[i] => msg.data2; // MIDI values
    B[j] => msg.data3; // velocity 
    mout.send(msg); // send message
    C[k]::second =>  now; // play 
    0x80 => msg.data1; // note off
    mout.send(msg); // send midi message
}

