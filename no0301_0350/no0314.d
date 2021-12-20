import std;

void main() {
    int N;
    readf("%d\n", N);

    long M = 10 ^^ 9 + 7;

    auto dp = new long[][](N, 3);
    dp[0][0] = 1;
    foreach (i; 1 .. N) {
        dp[i][0] = dp[i-1][2];
        dp[i][1] = dp[i-1][0];
        dp[i][2] = (dp[i-1][0] + dp[i-1][1]) % M;
    }

    long res = dp[N-1].sum % M;
    res.writeln;
}