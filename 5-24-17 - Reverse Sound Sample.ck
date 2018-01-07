// Jeong Woo Seo
// Infinite Loop  
// 5/24/17 

// sound chain
SndBuf mySound => dac;

// create path as string
me.dir() + "Chuck/audio/DPTE_Tom_001.wav" => string filename;

// open soundfile
filename => mySound.read;
mySound.samples() => int numSamples;

// loop
while (true)
{
    numSamples => mySound.pos; //set playhead position
    -1.0 => mySound.rate; // set rate negetive for reverse 
    1::second => now; // advance time    
}