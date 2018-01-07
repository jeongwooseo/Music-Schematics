// Jeong Woo Seo 
// 11/6/17
// Comp 16 (if & else statement)

// Sound Chain
SinOsc s => dac;

// set frequency 
220.0 => s.freq;

// set volume 
0.6 => s.gain;

// chance logical variable
3 => int chance; 

if (chance == 1)
{
    // sound will play only if chance == 1 
    1 :: second => now;    
}
else
{
    // otherwise, play other, higher twinkle note
    330.0 => s.freq;
    // play for much longer time
    3 :: second => now; 
}

// set and play one note, an octave above "twinkle"
440.0 => s.freq;
1 :: second => now; 