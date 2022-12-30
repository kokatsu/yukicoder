import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    foreach (i; 1 .. N+1) {
        if (i % 3 == 1) res += i;
        else if (i % 3 == 2) res += i ^^ 2;
        else res += i ^^ 3;
    }

    res.writeln;
}