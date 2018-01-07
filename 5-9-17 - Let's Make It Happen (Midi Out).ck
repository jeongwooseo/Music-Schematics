// Jeong Woo Seo
// Let's Make it Happen 
// 5/4/17

//declare array 
[42, 44, 46, 47, 49, 51, 53, 54] @=> int A[];
[.8,.8,.8,.8,.8,.8,.8,.8] @=> float notes[];

//P1
//sound netowrk s

// midi mout
MidiOut mout;

// connect to port 0
mout.open(0);

//create msg
MidiMsg msg;

//loop 1
for ( 0 => int i; i < 8; i++)
{
    <<< i , A[i] >>>; //print index & value
    //set msg values 
    0x90 => msg.data1; //note on
    A[i] => msg.data2; //note values
    85 => msg.data3; //velocity 
    //send message 
    mout.send(msg);
    notes[i]::second => now; //play
    //note off 
    0x80 => msg.data1;
    mout.send(msg); 
}

//let time pass for 1 seconds
1::second => now;

//set time later value 
now + 5::second => time later;

//P2

//set seed
Math.srandom(1);

// declare
int i, f;

while (now < later)
{
    Math.random2(0, A.size()-1) => int i; //generate random
    Math.random2(0, notes.size()-1) => int f;
    <<< A[i], notes[f] >>>;
    0x90 => msg.data1; //note on
    A[i] => msg.data2; //note values
    85 => msg.data3; //velocity 
    //send message 
    mout.send(msg);
    notes[f]::second => now;
    //note off 
    0x80 => msg.data1;
    mout.send(msg); 
}

//let time pass for 1 seconds
1::second => now;

//P3
//loop 1
for ( 0 => int i; i < 8; i++)
{
    <<< i , A[i] >>>; //print index & value
    //set msg values 
    0x90 => msg.data1; //note on
    A[i] => msg.data2; //note values
    85 => msg.data3; //velocity 
    //send message 
    mout.send(msg);
    notes[i]::second => now; //play
    //note off 
    0x80 => msg.data1;
    mout.send(msg); 
}

