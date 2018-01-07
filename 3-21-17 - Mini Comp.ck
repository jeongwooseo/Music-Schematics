//Jeong Woo Seo (Fuzzy)
//3-21-17

//sin wave
SinOsc s => dac;

//set sound gain & frequency 
0.2 => float a;
799  => int b;

//input sound
a => s.gain; 
b => s.freq;

//play rumble
1::second => now;

//add countdown time
5::second + now => time later;

//print now time
<<< "Print Time:", now/second >>>;

while( now < later )
{
    //print time left
    <<< "time left until clouds:", (now-later)/second >>>;
    //advance time
    .1::second => now;
    
}

//Play The Buzz
SawOsc w => dac;

a => w.gain;
b => w.freq;
2::second => now;

//set chance variable 
1 => int chance;

if(chance == 1)
{
    //Sin Play
    SinOsc s => dac;
    0.23 => s.gain;
    261 => s.freq;
    //Tri Play
    TriOsc v => dac;
    0.18 => v.gain;
    180 => v.freq;
    10::second => now;
}


else
{
    <<< "Time Now:", now/second >>>;
}


//Sound Network 
SawOsc q => dac;
900 => q.freq;
0.2 => q.gain;
1::second => now;

