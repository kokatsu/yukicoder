import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto dp = new int[][](N+1, 10);
    foreach (i; 0 .. N+1) {
        dp[i][] = -1;
    }
    dp[0][0] = 0;

    foreach (i, a; A) {
        dp[i+1][] = dp[i][];

        foreach (j; 0 .. 10) {
            if (dp[i][j] == -1) {
                continue;
            }

            long k = (a + j) % 10;
            dp[i+1][k] = max(dp[i+1][k], dp[i][j]+1);
        }
    }

    dp[N][0].writeln;
}