//Jeong Woo Seo 
//5/2/17
//Experiment 1


// infinite loop
while( true ) //? Why does this loop continue to get louder over time
{
    // Set Values
    240 => int i; 
    SinOsc s => dac;
    i => s.freq;
    .01 => s.gain;
    .1::second => now; 
    i++;
    if( i = 250 ) //?How to make this work?  
        break;
}

// Sound Network 2 
TriOsc t => dac;
222 => t.freq;
0.1 => t..gain;
2::second => now;