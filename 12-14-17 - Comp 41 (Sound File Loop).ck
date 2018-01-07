// Jeong Woo Seo
// 12/14/17
// Comp 41 (Sound File Loop)

// set sample chain
SndBuf mySound => Pan2 pan => dac;

// get file path and load file all in one line
me.dir()+"CS_Audio/audio/snare_01.wav" => mySound.read;

// infinite loop
while (true)
{
    // random pitch
    Math.random2f(0.2, 1.8) => mySound.rate;
    //random pan
    Math.random2f(-1.0,1.0) => pan.pan;
    // random gain
    Math.random2f(0.1,1.0) => mySound.gain;
    
    // (re)start the sound by setting position to 0
    5 => mySound.pos;
    
    // advance time so we can hear it
    300.0::ms => now;
}