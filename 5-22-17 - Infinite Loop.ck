// Jeong Woo Seo
// Infinite Loop  
// 5/22/17 

// Q: Error Line 19

// sound chain 
SndBuf mySound => Pan2 p => dac;

// directory of this file 
me.dir() => string path;
<<< path >>>; 

// define the filename 
"Chuck/audio/snare_01.wav" => string filename;
path + filename => filename;
<<< filename >>>;
// open up sound file (what opens up the sound file)
filename => mySound.read;

// infinite loop
while(true)
{
    Math.random2f(.2,.8) => mySound.gain; // set volume 
    Math.random2f(.2,1.8) => mySound.gain; // break
    Math.random2f(-1.0, 1.0) => p.pan; // set panning
    0 => mySound.pos; // sets playhead position
    100::ms => now;
}