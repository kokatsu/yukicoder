import std;

void main() {
    int N;
    readf("%d\n", N);

    auto mem = new ulong[][](26, 26);
    foreach (i; 0 .. N) {
        string S = readln.chomp;

        if (!S.isSorted) continue;

        auto l = S.length;
        int f = S.front - 'a', b = S.back - 'a';

        if (f == b) mem[f][b] += l;
        else mem[f][b] = max(mem[f][b], l);
    }

    auto dp = new ulong[](26);
    foreach (i; 0 .. 26) {
        dp[i] += mem[i][i];
        foreach (j; i+1 .. 26) {
            dp[j] = max(dp[j], dp[i]+mem[i][j]);
        }
    }

    dp.back.writeln;
}