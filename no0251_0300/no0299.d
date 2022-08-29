import std;

void main() {
    long N;
    readf("%d\n", N);

    long A = 316, B = 52;

    long res = A + (N - 1) * B;
    res.writeln;
}