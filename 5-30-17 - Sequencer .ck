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
    // beat goes from 0 to 7 (8 positions)
    counter % 8 => int beat;
    
    // bass drum on 0 and 4 
    if ( (beat == 0) || (beat == 4) )
    {
        0 => kick.pos;
        Math.random2f(.6,1.4) => snare.rate;
    }
    <<< "Counter; ", counter, "Beat: ", beat >>>;
    counter++; // counter + 1 => counter
    250::ms => now;
}

