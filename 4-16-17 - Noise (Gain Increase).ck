//Jeong Woo Seo
//Noise (Gain Object)
//4/16/17

// Sound Chain
Noise N => Pan2 p => dac;


// Infinite Loop
while( true )
{
    Math.sin(now/1::second*2*pi) =>p.pan;
    10::ms => now;
}