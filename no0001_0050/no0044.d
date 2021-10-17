import std;

void main() {
    int N;
    readf("%d\n", N);

    auto dp = new long[](N+1);
    dp[0] = 1;
    foreach (i; 1 .. N+1) {
        dp[i] += dp[i-1];
        if (i > 1) {
            dp[i] += dp[i-2];
        }
    }

    dp[N].writeln;
}