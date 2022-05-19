import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res;
    if (0 < K && K <= N) {
        res = N - (N == K * 2 - 1 ? 1 : 2);
    }

    res.writeln;
}