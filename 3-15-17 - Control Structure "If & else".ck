//Sound Network
SinOsc s => dac;

//Set Frequency
500 => s.freq;
//Set Volume
0.2 => s.gain;

0 => int chance;

if(chance == 1)
{
    //Sound only plays when chance == 1
    1::second => now; 
}

else
{
    //Set new frequency
    440.32 => s.freq;
    //Play for 3 seconds
    3::second => now;
}