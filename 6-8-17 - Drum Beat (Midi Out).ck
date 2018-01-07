// Jeong Woo Seo
// B1 Natural   
// 6/5/17 

// set counter movement 

// declare array 
[27, 27, 27, 27, 30, 32, 32, 32, 32, 34, 37, 37, 37, 37, 39, 39, 39, 39, 42, 42, 42, 42, 46, 46, 46, 46, 46] @=> int A[];
[3, 2, 4, 5, 6] @=> int notes[];

// initialize countervariable
0 => int counter;

// set seed 
int i, f;

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0); 

// create msg
MidiMsg msg;

// infinite loop
while (true) 
{
    // beat goes from 0 to 7 (8 positions)
    counter % 8 => int beat;
    
    // bass drum on 0 and 4 
    if ( (beat == 0) || (beat == 4) )
    {
        SinOsc s => dac;
        340 => s.freq;
        .2 => s.gain;
        1::second => now;
    }
    // snare drum on 2 and 6
    if ( (beat == 2) || (beat == 6) )
    {
        SawOsc t => dac;
        240 => t.freq;
        .2 => t.gain;
        1::second => now;
    }
    
    // snare drum on 2 and 6
    if ( (beat == 2) || (beat == 6) ) 
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
    // bass on 2 and 6
    if ( (beat == 1) || (beat == 2) || (beat == 3) || (beat == 4) || (beat == 6) )
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
    // hihat
    if ( (beat == 1) || (beat == 2) || (beat == 3) || (beat == 4) || (beat == 6) )
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
    
    <<< "Counter; ", counter, "Beat: ", beat >>>;
    counter++; // counter + 1 => counter
    250::ms => now;
}
