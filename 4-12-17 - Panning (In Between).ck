//Jeong Woo Seo
//Panning (In between)
//4/12/17

SinOsc s => Pan2 p => dac;

//hard pan right
1 => p.pan;

//advance time
1::second => now; 

//intialize pan position value
