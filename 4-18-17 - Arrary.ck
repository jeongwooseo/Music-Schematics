//Jeong Woo Seo (Fuzzy)
//Array Declaration
//4/18/17

// Declare Array 
[200, 100, 250, 150, 100, 150, 310] @=> int A[];

// Arrary information extraction 
A[0] => int data;
<<< data >>>;

// Set Time Later Value 
now + 3::second => time later;

// Wait 3 seconds
while (now < later)
{
    // Advance Time
    1::second => now;
}

// Q: Why did the value of A[0] not change?
// Change Arrary 0 value 
440 => A[0];
<<< data >>>;