import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int limit = 1 << N;
    auto dp = new int[](limit);
    foreach (i; 0 .. limit) {
        foreach (j; 0 .. N-1) {
            if ((i >> j) & 1) {
                continue;
            }

            foreach (k; j+1 .. N) {
                if ((i >> k) & 1) {
                    continue;
                }

                int idx = i + (1 << j) + (1 << k);
                dp[idx] = max(dp[idx], dp[i]+(A[j]^A[k]));
            }
        }
    }

    dp[limit-1].writeln;
}