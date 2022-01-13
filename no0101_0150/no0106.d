import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto lpf = iota(N+1).array;
    foreach (i; 2 .. N+1) {
        if (lpf[i] != i) continue;

        foreach (j; iota(i*i, N+1, i)) {
            if (lpf[j] != j) continue;

            lpf[j] = i;
        }
    }

    long res;
    foreach (i; 2 .. N+1) {
        long num = i, cnt;
        while (num > 1) {
            ++cnt;

            long p = lpf[num];
            while (num % p == 0) {
                num /= lpf[num];
            }
        }

        if (cnt >= K) ++res;
    }

    res.writeln;
}