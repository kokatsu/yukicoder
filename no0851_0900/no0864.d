import std;

void main() {
    long N, K;
    readf("%d\n%d\n", N, K);

    long M = N * 2, S = K.to!real.sqrt.floor.to!long;

    long f(long x) {
        return min(N, x-1) - max(0, x-N-1);
    }

    long res, L = min(M, S);
    foreach (i; 2 .. L+1) {
        if (K % i == 0) {
            long d = K / i;
            if (d > M) continue;

            long cnt = f(i) * f(d);
            res += (i == d ? cnt : cnt * 2);
        }
    }

    res.writeln;
}