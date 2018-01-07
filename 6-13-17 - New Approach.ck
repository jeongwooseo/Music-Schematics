// Jeong Woo Seo
// New Approach   
// 6/13/17 

// sound chain
Gain master => dac;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf snare => master;
SndBuf bass => master;

// set master gain
.6 => master.gain;

// load soundfiles into sndbuf
me.dir() + "CS_Audio/audio/kick_01.wav" => kick.read;
me.dir() + "CS_Audio/audio/hihat_05.wav" => hihat.read;
me.dir() + "CS_Audio/audio/DPTE_Tom_001.wav" => snare.read;
me.dir() + "CS_Audio/audio/bass_01.wav" => bass.read;

//set all playhead to end so no sound is made
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;
bass.samples() => bass.pos;

// declare arrary 
[27, 27, 27, 27, 30, 32, 32, 32, 32, 34, 37, 37, 37, 37, 39, 39, 39, 39, 42, 42, 42, 42, 46, 46, 46, 46, 46] @=> int A[];
[1] @=> int notes[];
 
// declare
int i, f;

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0); 

// create msg
MidiMsg msg;

// initialize countervariable
0 => int counter;

// set seed
Math.srandom(1);

// infinite loop
while (true) 
{
    // beat goes from 0 to 15 (16 positions)
    counter % 16  => int beat;
    
    if ( (beat == 1) || (beat == 3) )
    // melody 
    Math.random2(0, A.size()-1) => int i; // generate random
    Math.random2(0, notes.size()-1) => int f; // generate random
    <<< A[i], notes[f] >>>; // print 
    0x90 => msg.data1; // note on
    A[i] => msg.data2; // note values
    85 => msg.data3; // velocity 
    mout.send(msg); // send message
    0x80 => msg.data1; // note off
    mout.send(msg); // send midi message
    
    // kick drum on 0 and 10 
    if ( (beat == 0 ) || ( beat == 10 ) )
    {
        0 => kick.pos;
        Math.random2f(.6,1) => kick.rate;
    } 
    // snare drum on 4 and 7
    if ( (beat == 4) || (beat == 12) )
    {
        0 => snare.pos;
        .3 => snare.gain;
        Math.random2f(.8,1) => snare.rate;
    }
    // hihat
    0 => hihat.pos;
    .1 => hihat.gain;  
    
    // bass
    0 => bass.pos;
    .1 => bass.gain;
    
    <<< "Counter; ", counter, "Beat: ", beat >>>;
    counter++; // counter + 1 => counter  
    100::ms => now;
}