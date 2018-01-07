// Jeong Woo Seo
// Drum Beat Midi Message Out   
// 6/10/17 

// declare array (kick)
[4] @=> int A[];
[1] @=> int notes[];

// declare array (tom)
[12] @=> int B[];
[1] @=> int notesb[];


// initialize countervariable
0 => int counter;

// set int variables (kick)
int i, f;

// set int variables (tom)
int g, h;

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0); 

// create msg
MidiMsg msg;

// infinite loop
while (true) 
{
    // beat goes from 0 to 3 (4 positions)
    counter % 4 => int beat;
    
    // bass drum on every beat 
    if ( (beat < 5) )
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
    if ( (beat < 5) )
    {
        Math.random2(0, B.size()-1) => int g; // generate random
        Math.random2(0, notes.size()-1) => int h; // generate random
        <<< A[g], notes[h] >>>; // print 
        0x90 => msg.data1; // note on
        A[g] => msg.data2; // note values
        85 => msg.data3; // velocity 
        mout.send(msg); // send message
        notes[h]::second =>  now; // play 
        0x80 => msg.data1; // note off
        mout.send(msg); // send midi message
    }
}
