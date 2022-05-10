import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = N;
    if (N > 3) res = (N - 3) * 5 + 3;

    res.writeln;
}