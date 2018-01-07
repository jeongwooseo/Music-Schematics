// Jeong Woo Seo
// B1 Natural   
// 6/5/17 

// declare array 
[27, 27, 27, 27, 30, 32, 32, 32, 32, 34, 37, 37, 37, 37, 39, 39, 39, 39, 42, 42, 42, 42, 46, 46, 46, 46, 46] @=> int A[];
[3, 2, 4, 5, 6] @=> int notes[];

// sound chain
Gain master => dac;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf snare => master;

.6 => master.gain;

// load soundfiles into sndbuf
me.dir() + "CS_Audio/audio/kick_01.wav" => kick.read;
me.dir() + "CS_Audio/audio/hihat_01.wav" => hihat.read;
me.dir() + "CS_Audio/audio/snare_01.wav" => snare.read;

//set all playhead to end so no sound is made
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;

// initialize countervariable
0 => int counter;

// infinite loop
while (true) 
{
    // beat goes from 0 to 3 (4 positions)
    counter % 4 => int beat;
    
    // bass drum on 0 and 4 
    if (beat < 5)
    {
        0 => kick.pos;
        Math.random2f(.6,1.4) => snare.rate;
    }
    
    // snare drum on 2 and 6
    if ( (beat == 2) || (beat == 6) );
    {
        0 => snare.pos;
    }
    
    // hihat
    0 => hihat.pos;
    .2 => hihat.gain;
    Math.random2f(.2,1.8) => hihat.rate;
    
    <<< "Counter; ", counter, "Beat: ", beat >>>;
    counter++; // counter + 1 => counter
    400::ms => now;
}