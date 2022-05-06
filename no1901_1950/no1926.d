import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N, M, K;
        readf("%d %d %d\n", N, M, K);

        long res = K % M;
        if (res >= M - N) res = 0;

        res.writeln;
    }
}