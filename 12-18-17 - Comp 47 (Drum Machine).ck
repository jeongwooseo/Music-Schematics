// Jeong Woo Seo 
// 12/18/17
// Drum Machine

// create sample chain
SndBuf kick => Gain master => dac;
SndBuf snare => master;

// load samples
me.dir()+"CS_Audio/audio/kick_01.wav" => kick.read;
me.dir()+"CS_Audio/audio/snare_01.wav" => snare.read;

while (true)
{
    // Beat 1, play kick drum alone
    0 => kick.pos;
    0.6::second => now;
    // Play both drums on beat 2
}