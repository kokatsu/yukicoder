import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = 2 * 10 ^^ 5;
    auto dp = new int[](M*2+1);
    foreach (i; 0 .. N) {
        int x, r;
        readf("%d %d\n", x, r);

        ++dp[M+x-r], --dp[M+x+r];
    }

    int res;
    foreach (i; 1 .. M*2+1) {
        dp[i] += dp[i-1];

        res = max(res, dp[i]);
    }

    res.writeln;
}