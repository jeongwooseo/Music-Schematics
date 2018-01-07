// Jeong Woo Seo
// 12/2/17
// Comp 40 (Checkpoint)

// sound chain
SinOsc s => Pan2 mpan => dac;
TriOsc t => Pan2 npan => dac;

// set intitial frequency value
300 => int x;

// set another instance of frequency values
[55, 58, 59, 60, 62, 63, 
64, 65, 66, 67, 68, 69] @=> int z[];

// harmony frequencies
[80, 82, 84, 85, 86, 87, 
89, 91, 94, 95, 97, 99] @=> int harmNotes[];

// chuck x into FreqA;
x => int FreqA;

// set on & off gain
0.0 => float offGain;
1.0 => float onGain;

// set initial duration value
1.0 => float y; 

// chuck y into myDur
y => float myDur;

// set initial melody value 
90 => x;

// set time later value
5::second + now => time later;

// set chance value
Math.random2(0,10) => int chance;

// set chance2 value
Math.random2(0,10) => int chance2;

// set seed
Math.srandom(1);

// set vairable i
int i;

while (now < later)
{
    // move melody
    Math.random2(-2,2) +=> x;
    <<< "Frequency" , x >>>;
    // set upper limit
    if ( x > 130)
    {
        130 => x;
    }
    // set lower limit
    if ( x < 20 )
    {
        20 => x;
    }
    // set frequency
    Std.mtof(x) => s.freq;
    
    // melody has a random pan for each note
    Math.random2f(0.5,1.0) => myDur;
    
    // advance time 80% of Dur
    onGain => s.gain;
    (.8*myDur)::second => now;
    
    // turn off oscillator 20% of Dur
    offGain => s.gain;
    (.2*myDur)::second => now;
    
    // turn on oscillator 
    onGain => s.gain;
}

if ((chance < 5 ) && (chance2 > 5 ))
{
    4000 => s.freq;
    2:: second => now;
}

else 
    for (0 => int i; i < z.cap(); i++)
{
    {
        // print i
        <<< i >>>;
        // Math.random2f(-1,1) => mpan.pan;
        Std.mtof(z[i]) => s.freq;
        Math.random2f(-0.8,0.8) => mpan.pan;
        500::ms => now;
        i++;
    }
}