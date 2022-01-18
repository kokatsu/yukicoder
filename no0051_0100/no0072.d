import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = 10 ^^ 6 + 7;

    long x = (N / 2) % M;

    N %= M;

    long res = ((N - x + M) * x + N) % M;
    res.writeln;
}