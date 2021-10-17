import std;

void main() {
    int N;
    readf("%d\n", &N);
    
    foreach (i; 1 .. N+1) {
        if (i % 15 == 0) {
            writeln("FizzBuzz");
        }
        else if (i % 3 == 0) {
            writeln("Fizz");
        }
        else if (i % 5 == 0) {
            writeln("Buzz");
        }
        else {
            writeln(i);
        }
    }
}