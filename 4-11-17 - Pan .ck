//Jeong Woo Seo
//Panning 
//4/11/17

//set s to left speaker, t to right speaker
SinOsc s => dac.left;
SinOsc t => dac. right; 

//set frequencies
220.35 => s.freq;
330.67 => t.freq;

//advance time
1::second => now;