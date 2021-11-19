import std;

struct Path {
    long from;
    long to;
}

void main() {
    long N, M, T;
    readf("%d %d %d\n", N, M, T);

    auto path = new Path[](M);
    foreach (i; 0 .. M) {
        long s, t;
        readf("%d %d\n", s, t);

        path[i] = Path(s, t);
    }

    enum long MOD = 998244353;

    auto dp = new long[][](T+1, N);
    dp[0][0] = 1;
    foreach (i; 0 .. T) {
        foreach (p; path) {
            dp[i+1][p.to] = (dp[i+1][p.to] + dp[i][p.from]) % MOD;
            dp[i+1][p.from] = (dp[i+1][p.from] + dp[i][p.to]) % MOD;
        }
    }

    long res = dp[T][0];
    res.writeln;
}