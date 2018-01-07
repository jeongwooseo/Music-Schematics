//1. Initiate Mist
//Sound Network
10::second + now => time later;

while(now < later)
{
    //Countdown
    <<< "Time Left:", (later-now)/second >>>;
    //Advance time 
    1::second => now;
}

<<< "Initiate Mist:," >>>;

SinOsc s => dac;
250 => s.freq;
0.2 => s.gain;
1::second => now;


//2. Initiate Clouds
//3. Initiate 
