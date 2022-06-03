import std;

void main() {
    long n;
    readf("%d\n", n);

    long M = 998244353;

    void addMod(ref long x, long y) {
        x += y;
        if (x >= M) x %= M;
    }

    long w = n * 2 + 1, l = w * 2;

    auto dp = new long[][](n+1, l+1);
    dp[0][w] = 1;
    foreach (i; 0 .. n) {
        foreach (j; 0 .. l+1) {
            foreach (k; 1 .. w-i+1) {
                long a, t = k;
                while (t > 0) {
                    ++a;
                    t /= 10;
                }

                if (i > 0) ++a;

                long p = j + k - a;
                if (0 <= p && p <= l) addMod(dp[i+1][p], dp[i][j]);
            }
        }
    }

    long res = dp[n][w];
    res.writeln;
}