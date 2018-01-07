// Jeong Woo Seo 
// 12/19/17
// Comp 50 (Check Point)

// create sample chain
SndBuf kick => Pan2 pan => Gain master => dac;
SndBuf snare => dac;

// load samples 
string snare_samples[2];
me.dir()+"CS_Audio/audio/kick_01.wav" => kick.read;
me.dir()+"CS_Audio/audio/snare_01.wav" => snare_samples[0];
me.dir()+"CS_Audio/audio/snare_02.wav" => snare_samples[1];

// infinite loop
while (true)
{
    // beat 1, play kick drum alone
    0 => kick.pos;
    Math.random2f(0.2, 1.8) => kick.rate; // random pitch
    Math.random2f(-1.0, 1.0) => pan.pan; // random pan
    Math.random2f(0.1,1.0) => kick.gain; // random gain
    .5::second => now;
    // beat 2, play both drums
    Math.random2(0, snare_samples.cap()-1) => int which;
    snare_samples[which] => snare.read;
    0 => kick.pos;
    0 => snare.pos;
    .5::second => now;
}


  // (re)start the sound by setting position to 0
    //5 => mySound.pos;
    
    // how many positions are within the samle
//mySound.samples() => int numSamples;