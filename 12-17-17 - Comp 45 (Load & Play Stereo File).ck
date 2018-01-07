// Jeong Woo Seo
// 12/17/17
// Comp 45 (Load & Play Stereo File)

// create sample chain
SndBuf2 myStereoSound => dac;

// load up a stereo file
me.dir()+"CS_Audio/audio/snare_01.wav" => myStereoSound.read;

// and let it play for the right amount of time
myStereoSound.length() => now;