import std;
void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    auto dp = new long[][][](N, 4, 2);
    foreach (i; 0 .. 4) dp[0][i][] = a.front;
    a.popFront;

    foreach (i; 1 .. N) {
        foreach (j; 0 .. 4) {
            dp[i][j][0] = long.min;
            dp[i][j][1] = long.max;
        }
    }

    void f(ref long x, long y) {
        if (x < y) x = y;
    }

    void g(ref long x, long y) {
        if (x > y) x = y;
    }

    foreach (i, x; a) {
        foreach (j; 0 .. 4) {
            foreach (k; 0 .. 2) {
                if (dp[i][j][k] == long.min || dp[i][j][k] == long.max) continue;

                f(dp[i+1][0][0], dp[i][j][k]+x);
                f(dp[i+1][1][0], dp[i][j][k]-x);
                f(dp[i+1][2][0], dp[i][j][k]*x);
                if (x != 0) f(dp[i+1][3][0], dp[i][j][k]/x);

                g(dp[i+1][0][1], dp[i][j][k]+x);
                g(dp[i+1][1][1], dp[i][j][k]-x);
                g(dp[i+1][2][1], dp[i][j][k]*x);
                if (x != 0) g(dp[i+1][3][1], dp[i][j][k]/x);
            }
        }
    }

    long res = long.min;
    foreach (i; 0 .. 4) {
        foreach (j; 0 .. 2) {
            if (dp[N-1][i][j] == long.min || dp[N-1][i][j] == long.max) continue;

            f(res, dp[N-1][i][j]);
        }
    }

    res.writeln;
}