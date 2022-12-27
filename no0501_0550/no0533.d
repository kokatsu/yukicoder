import std;

enum long MOD = 10 ^^ 9 + 7;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long N;
    readf("%d\n", N);

    auto dp = new long[][](N+1, 4);
    dp[0][0] = 1;
    foreach (i; 1.. N+1) {
        foreach (j; 1 .. 4) {
            if (j > i) continue;

            foreach (k; 0 .. 4) {
                if (k == j) continue;
                addMod(dp[i][j], dp[i-j][k]);
            }
        }
    }

    auto res = dp[N].sum % MOD;
    res.writeln;
}