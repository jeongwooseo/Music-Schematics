// Jeong Woo Seo
// 12/14/17
// Comp 42 (Sound File Reversed)

// set sample chain
SndBuf mySound => dac;

// get file path and load file all in one line
me.dir()+"CS_Audio/audio/snare_01.wav" => mySound.read;

// how many positions are within the samle
mySound.samples() => int numSamples;

// print numSamples
<<< numSamples >>>;

// play once foward
0 => mySound.pos;
numSamples::samp => now;

// play once backward
numSamples => mySound.pos;
-1.0 => mySound.rate;
numSamples::samp => now;