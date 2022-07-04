import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res;
    if (N >= K) res = 1 << (N - K);

    res.writeln;
}