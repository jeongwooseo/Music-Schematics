// Jeong Woo Seo
// Sound Files  
// 5/16/17 

// Q1: Why no read when in the fold brah?

// sound chain
SndBuf snare => dac;

// array of strings (paths)
string snare_samples[3];

// load array with file paths
me.dir() + "Chuck/audio/snare_01.wav" => snare_samples[0];
me.dir() + "Chuck/audio/snare_02.wav" => snare_samples[1];
me.dir() + "Chuck/audio/snare_03.wav" => snare_samples[2];

// how many samples?
<<< snare_samples.cap() >>>;

//infinite loop
while (true)
{
    Math.random2(0, snare_samples.cap() - 1) => int which; // 0, 1, or 2 
    snare_samples[which] => snare.read; // read in samples
    250::ms => now;
}