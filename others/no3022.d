import std;

void main() {
    int N;
    readf("%d\n", N);

    int zero = 'a' - 'a';
    int three = 'd' - 'a';
    int five = 'f' - 'a';
    int fifteen = 'p' - 'a';

    int i;
    do {
        ++i;
        if (i % fifteen == zero) {
            writeln("FizzBuzz");
        }
        else if (i % three == zero) {
            writeln("Fizz");
        }
        else if (i % five == zero) {
            writeln("Buzz");
        }
        else {
            writeln(i);
        }
    } while (i < N);
}