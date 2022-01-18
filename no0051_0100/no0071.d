import std;

void main() {
    long N;
    readf("%d\n", N);

    long x = N / 2;

    long res = (N - x) * x + N;
    res.writeln;
}