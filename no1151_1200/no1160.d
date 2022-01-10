import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = new long[](N), a = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", p[i], a[i]);
    }

    auto dp = new long[][](N+1, 2);
    dp[1][0] = p[0], dp[1][1] = a[0];
    foreach (i; 1 .. N) {
        dp[i+1][0] = max(dp[i][0]+p[i], dp[i][1]+p[i]*2);
        dp[i+1][1] = max(dp[i][0]+a[i], dp[i][1]+a[i]*2);
    }

    dp[N][0].writeln;
}