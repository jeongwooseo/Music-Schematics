// Jeong Woo Seo 
// 12/19/17
// Comp 49 (Drum Machine With SndBuf)

// create sample chain
SndBuf kick => Gain master => dac;
SndBuf snare => master;

// load samples 
me.dir()+"CS_Audio/audio/kick_01.wav" => kick.read;
me.dir()+"CS_Audio/audio/snare_01.wav" => snare.read;

// infinite loop
while (true)
{
    // beat 1, play kick drum alone
    0 => kick.pos;
    0.6::second => now;
    // beat 2, play both drums
    0 => kick.pos;
    0 => snare.pos;
    0.6::second => now;
}