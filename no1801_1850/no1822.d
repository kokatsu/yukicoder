import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = (N + 1) / 2;

    long res = M * (M + 1) / 2;
    res.writeln;
}