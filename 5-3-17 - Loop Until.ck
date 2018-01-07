//Jeong Woo Seo 
//5/3/17
//Until Loop

//17 -> I want the loop to stop! Bc I want 21 and onward to play by itself 

// Set Time Later
now + 3::second => time later;
<<< "time left:", (later-now)/second >>>;

// Until Loop
until( now > later )
{
    // Sound Nework
    SinOsc s => dac;
    440 => s.freq;
    0.1 => s.gain;
    1::second => now;
} 

// While Loop 
while (true)
{
    // Sound Nework
    TriOsc s => dac;
    240 => s.freq;
    0.1 => s.gain;
    1::second => now;
    
}