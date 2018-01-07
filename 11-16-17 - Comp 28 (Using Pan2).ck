// Jeong Woo Seo 
// 11/16/17
// Comp 28 (Using Pan2)

// Sounds chain + run SincOsc s through Pan2 p
SinOsc s => Pan2 p => dac;

// initialiaze pan position 
-1.0 => float panPosition;

// loop to vary panning
while (panPosition < 1.0){
    panPosition => p.pan;
    <<< panPosition >>>;
    panPosition + 0.01 => panPosition;
    10:: ms => now;
}