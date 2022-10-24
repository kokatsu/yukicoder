import std;

void main() {
    int N, I;
    readf("%d %d\n", N, I);

    auto dp = new int[](I+1);
    foreach (_; 0 .. N) {
        int s, a;
        readf("%d %d\n", s, a);

        foreach_reverse (i; 0 .. I-s+1) {
            dp[i+s] = max(dp[i+s], dp[i]+a);
        }
    }

    int res = dp.maxElement;
    res.writeln;
}