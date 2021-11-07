import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    string S = readln.chomp;

    auto dp = new int[][](N+1, 26);
    foreach (i, s; S) {
        dp[i+1][] = dp[i][];

        ++dp[i+1][s-'a'];
    }

    foreach (_; 0 .. Q) {
        int L, R, X;
        readf("%d %d %d\n", L, R, X);

        long cnt;
        foreach (i; 0 .. 26) {
            cnt += dp[R][i] - dp[L-1][i];
            if (cnt >= X) {
                writeln(dchar(i+'a'));
                break;
            }
        }
    }
}