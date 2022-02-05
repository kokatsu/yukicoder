import std;

void main() {
    long N, D;
    readf("%d %d\n", N, D);

    auto dp = new long[][](N+1, 2);
    dp[0][1] = long.min / 2;
    foreach (i; 0 .. N) {
        long T, K;
        readf("%d %d\n", T, K);

        dp[i+1][0] = max(dp[i][0], dp[i][1]-D) + T;
        dp[i+1][1] = max(dp[i][0]-D, dp[i][1]) + K;
    }

    dp[N].maxElement.writeln;
}