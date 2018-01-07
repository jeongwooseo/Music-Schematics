//Jeong Woo Seo
//7/17/17 
//Isolation

// what I want the code to do
// low drone in the begining
// notes throughout+higher drone
// dying out with higher drone
// ending with just the low drone  

// written with freygish ahava raba C as base
// C, C#, D#, F, G, A, A#
// following are midi note values
// C: 0, 12, 24, 36, 48, 60, 72, 84, 96, 108, 120
// C#: 1, 13, 25, 37, 49, 61, 73, 85, 97, 109, 121
// D#: 3, 15, 27, 39, 51, 63, 75, 87, 99, 111, 123
// F: 5, 17, 29, 41, 53, 65, 77, 89, 101, 113, 125
// G: 7, 19, 31, 43, 55, 67, 79, 91, 103, 115, 127
// A: 9, 21, 33, 45, 57, 69, 81, 93, 105, 117
// A#: 10, 22, 34, 46, 58, 70, 82, 94, 106, 118

// declare array for I (drone)
[36] @=> int G[]; // midi value
[30.0] @=> float H[]; // note duration
[50] @=> int I[]; // velocity 

// declare array for II
[0, 2, 4, 5, 7, 9, 11, 12, 14, 16, 17, 19, 21, 23, 24, 26, 28, 29, 31, 33, 35, 36, 28, 40, 41, 43, 45, 47, 48, 50, 52, 53, 55, 57, 59, 60, 62, 64, 65, 67, 69, 71, 72, 74, 76, 77, 79, 81, 83, 84, 86, 88, 89, 91, 93, 95, 108, 110, 112, 113, 115, 117, 119, 120, 122, 124, 125, 127] @=> int A[]; // midi value
[1.0, 2.7, 2.7, 2.7, 2.7] @=> float B[]; // note duration
[70, 71,80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90] @=> int C[]; // velocity 

// declare array for III
[0, 2, 4, 5, 7, 9, 11, 12, 14, 16, 17, 19, 21, 23, 24, 26, 28, 29, 31, 33, 35, 36, 28, 40, 41, 43, 45, 47, 48, 50, 52, 53, 55, 57, 59, 60, 62, 64, 65, 67, 69, 71, 72, 74, 76, 77, 79, 81, 83, 84, 86, 88, 89, 91, 93, 95, 108, 110, 112, 113, 115, 117, 119, 120, 122, 124, 125, 127] @=> int D[]; // midi value
[1.0, 2.7, 2.7, 2.7, 2.7] @=> float E[]; // note duration
[70, 71,80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90] @=> int F[]; // velocity 

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0); 

// create msg
MidiMsg msg;

// set time later value 
now + 1800::second => time later;

// declare for I
int t, u, v;

// declare for II
int q, r, s;

// declare for III
int w, x, y;

// set seed
Math.srandom(2);

while (now < later)
{
    Math.random2(0, A.size()-1) => int q; // generate random for note value
    Math.random2(0, B.size()-1) => int r; // generat random for dur
    Math.random2(0, C.size()-1) => int s; // generate random for velocity 
    <<< A[q], B[r], C[s]>>>; // print 
    0x90 => msg.data1; // note on
    A[q] => msg.data2; // note values
    s => msg.data3; // velocity 
    mout.send(msg); // send message 
    B[r]::second =>  now; // play 
    .01::second => now; // pass time 
    0x80 => msg.data1; // note off
    mout.send(msg); // send midi message
}