 //Jeong Woo Seo
//Random (Ping Pong Loop)
//4/17/17

//Sound chain
SinOsc s => Pan2 y => dac;
262 => s.freq;
0.2 => s.gain;
1::second => now;

//Set seed 
math.srandom(900);

//Infinite loop
while ( true )
{
    //random
    Math.random2(30, 200) => int i; //generate random
    Math.random2f(.02, .08) => float f; //generate random 
    <<< i, f >>>;
    i => s.freq;
    f => s.gain;
    .50::second => now;
    
    // initialize pan position value
    1.0 => float panPosition; 
    // intialize infinite loop of ping pong panning 
    while ( panPosition > -1.0 )
    {
        panPosition => y.pan; // pan value 
        0.01 => panPosition;
        .01::second => now;
    }
}