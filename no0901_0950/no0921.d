import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto dp = new int[][](N, 2);
    dp[0][1] = 1;
    foreach (i; 1 .. N) {
        dp[i][0] = dp[i-1][1];
        dp[i][1] = dp[i-1][0] + 1;
        if (A[i] == A[i-1]) {
            dp[i][1] = max(dp[i][1], dp[i-1][1]+1);
        }
    }

    dp[N-1].maxElement.writeln;
}