// Jeong Woo Seo
// Sound Files  
// 5/16/17 

// Q: Error Line 19

// sound chain 
SndBuf mySound => dac;

// directory of this file 
me.dir() => string path;
<<< path >>>; 

// define the filename 
"Chuck/audio/snare_01.wav" => string filename;
path + filename => filename;
<<< filename >>>;
// open up sound file (what opens up the sound file)
filename => mySound.read;

// simple control
.1 => mySound.gain; // set volume
0 => mySound.pos; // sets playhead position;
1.0 => mySound.rate; // set rate (speed of SnDBuf)

// advance time

2::second => now;