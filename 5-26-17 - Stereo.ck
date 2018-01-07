// Jeong Woo Seo
// Sound Files  
// 5/26/17 

SndBuf2 mySound => dac;

// read the file into the string
me.dir() + "Chuck/audio/Vee_1.wav" => string filename;

// open up soundfile
filename => mySound.read;

// set seed
 math.srandom(20);

// infinite loop
while (true)
{
    Math.random2f(.6, 1.0) => mySound.gain; // set gain
    Math.random2f(.2, 1.9) => mySound.rate; // set rate
    0 => mySound.pos; // set playhead position
    1::second => now; // advance time
}