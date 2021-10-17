import std;

void main() {
    long N;
    readf("%d\n", N);

    long icbrt = N.to!real.cbrt.to!long;

    if (N == icbrt ^^ 3) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}