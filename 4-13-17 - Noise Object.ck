//Jeong Woo Seo
//Noise Object
//4/13/17

// sound chain 
Noise N => Pan2 p => dac;

// infintie loop
while( true )
{
    Math.sin(now/1::second*2*pi) => p.pan;
    10::ms => now;
}