import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res = N / (K + 1) + 1;
    res.writeln;
}