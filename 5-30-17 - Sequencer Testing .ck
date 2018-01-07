// Jeong Woo Seo
// Sequencer
// 5/30/17

// sound chain
Gain master => dac;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf snare => master;

.6 => master.gain;

// load soundfiles into sndbuf
me.dir() + "Chuck/audio/K1.wav" => kick.read;
me.dir() + "Chuck/audio/H1.wav" => hihat.read;
me.dir() + "Chuck/audio/S1." => snare.read;
me.dir() + "Chuck/audio/B1.wav" => bass.read;

//set all playhead to end so no sound is made
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;

// initialize countervariable
0 => int counter;

// infinite loop
while (true) 
{
    // beat goes from 0 to 7 (8 positions)
    counter % 8 => int beat;
    
    // bass drum on 0 and 4 
    if ( (beat == 0) || (beat == 4) )
    {
        0 => kick.pos;
        Math.random2f(.6,1.4) => kick.rate;
    }
    
    // snare drum on 2 and 6
    if ( (beat == 2) || (beat == 6) )
    {
        0 => snare.pos;
    }
    
    // snare drum on 2 and 6
    if ( (beat == 2) || (beat == 6) )
    {
        0 => snare.pos;
    }
    // snare drum on 2 and 6
    if ( (beat == 2) || (beat == 6) )
    {
        0 => bass.pos;
    }
    // hihat
    0 => hihat.pos;
    .2 => hihat.gain;
    Math.random2f(.2,1.8) => hihat.rate;
    
    <<< "Counter; ", counter, "Beat: ", beat >>>;
    counter++; // counter + 1 => counter
    250::ms => now;
}