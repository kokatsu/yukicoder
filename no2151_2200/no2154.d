import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto dp = new int[](N+1);
    foreach (_; 0 .. M) {
        int L, R;
        readf("%d %d\n", L, R);

        ++dp[N-L], --dp[N-R+1];
    }

    foreach (i; 1 .. N+1) {
        dp[i] += dp[i-1];
    }

    dp.popBack;

    foreach (d; dp) d.writeln;
}