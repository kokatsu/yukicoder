import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = new long[][](N);
    foreach (i; 0 .. N) A[i] = readln.chomp.split.to!(long[]);

    if (N == 1) {
        writeln(0);
        return;
    }

    long res = A[0].minElement;

    auto dp = new long[][](N, M);
    dp[0][] = A[0][];
    foreach (i; 1 .. N) {
        foreach (j; 0 .. M) {
            dp[i][j] = A[i][j] + min(dp[i-1][j], res+A[i-1][j]);
        }

        res = dp[i].minElement;
    }

    res.writeln;
}