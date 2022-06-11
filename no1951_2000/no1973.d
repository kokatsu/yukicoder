import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    enum long MOD = 10 ^^ 9 + 7;

    void addMod(ref long x, long y) {
        x = (x + y) % MOD;
    }

    long[long] cnts;
    long d = 2;
    while (d * d <= M) {
        while (M % d == 0) {
            ++cnts[d];
            M /= d;
        }
        ++d;
    }

    if (M > 1) ++cnts[M];

    long res = 1;
    foreach (key, val; cnts) {
        auto dp = new long[][](N+1, val+1);
        dp[0][0] = 1;
        foreach (i; 1 .. N+1) {
            long tmp;
            foreach_reverse (j; 0 .. val+1) {
                addMod(tmp, dp[i-1][val-j]);
                dp[i][j] = tmp;
            }
        }

        long num = dp[N].fold!((a, b) => (a + b) % MOD);
        res = (res * num) % MOD;
    }

    res.writeln;
}