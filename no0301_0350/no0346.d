import std;

void main() {
    string S = readln.chomp;

    auto len = S.length;

    auto dp = new long[][](len+1, 3);
    foreach (i, s; S) {
        dp[i+1][] = dp[i][];
        if (s == 'c') {
            ++dp[i+1][0];
        }
        else if (s == 'w') {
            dp[i+1][1] += dp[i][0];
            dp[i+1][2] += dp[i][1];
        }
    }

    dp[len][2].writeln;
}