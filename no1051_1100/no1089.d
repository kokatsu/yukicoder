import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N + 1;

    int res = M * M - N * M / 2;
    res.writeln;
}