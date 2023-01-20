import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res = 1 << (N - K);
    if (K == 1) res -= N;

    res.writeln;
}