// Jeong Woo Seo 
// 12/26/17 
// Comp 59 (Function Test MIDI Interval)

// Define some global variables
"HOWDY!!" => string howdy;
100.0 => float glob;
int int1, int2;

// Function Definition 
fun int interval ( int note1, int note2)
{
    int result;
    note2 - note1 => result;
    <<< howdy, glob >>>;
    return result;
}

// Main program, test and print
interval(60,72) => int1;
interval(67,60) => int2;

<<< int1, int2 >>>;

<<< result >>>; // this line will cause an error