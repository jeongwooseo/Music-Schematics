// Jeong Woo Seo
// 12/22/17
// Comp 52 (Improved Drum Machine 2)

// create sample chain
SndBuf kick => Gain master => dac;
SndBuf snare => master;
SndBuf hihat => master;

// load up some samples of those
me.dir()+"CS_Audio/audio/kick_01.wav" => kick.read;
me.dir()+"CS_Audio/audio/snare_01.wav" => snare.read;
me.dir()+"CS_Audio/audio/hihat_01.wav" => hihat.read;
0.3 => hihat.gain;

// set tempo
0.15::second => dur tempo;

// scores (arrays) to tell drums when to play
[1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0] @=> int kickHits[];
[0,0,1,0,0,0,1,0,0,0,0,0,1,1,1,1] @=> int snareHits[];

// infinite loop

while (true)
{
    0 => int beat;
    while (beat < kickHits.cap())
    {
        // play kick drum based on array value
        if (kickHits[beat])
        {
            0 => kick.pos;
        }
        if (snareHits[beat])
        {
            0 => snare.pos;
        }
        // always play hihat
        1 => hihat.pos;
        tempo => now;
        beat++;
    }
}