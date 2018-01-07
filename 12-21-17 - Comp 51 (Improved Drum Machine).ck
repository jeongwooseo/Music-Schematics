// Jeong Woo Seo
// 12/21/17
// Comp 51 (Improved Drum Machine)

// create sound chain
SndBuf2 kick => Gain master => dac;
SndBuf2 snare => master;

// load samples
me.dir()+"CS_Audio/audio/kick_01.wav" => kick.read;
me.dir()+"CS_Audio/audio/snare_01.wav" => snare.read;

// declare a new tempo variable
0.15::second => dur tempo;

// infinite loop
while (true)
{
    for ( 0 => int beat; beat < 16; beat++)
    {
        // play kick drum on beat 0, 4, 8, and 12
        if (beat==0 || beat==4 || beat==8 || beat==12)
        {
            0 => kick.pos;
        }
        // play snare drum on beat 4, 10, 13, and 14
        if (beat==4 || beat==10 || beat==13 || beat==14)
        {
            0 => snare.pos;
        }
        tempo => now;
    }
}