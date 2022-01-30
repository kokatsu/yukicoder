import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = N * 2;
    while (N > 0) {
        res -= N;
        N /= 2;
    }

    res.writeln;
}