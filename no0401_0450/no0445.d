import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int f = 50 * N + (500 * N) / (8 + 2 * K);

    f.writeln;
}