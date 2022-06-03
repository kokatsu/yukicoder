import std;

void main() {
    long T;
    readf("%d\n", T);

    long MOD = 10 ^^ 9 + 7;

    long inv2 = powMod(2, MOD-2, MOD);
    long inv3 = powMod(3, MOD-2, MOD);

    foreach (i; 0 .. T) {
        long N, M;
        readf("%d %d\n", N, M);

        long a = powMod(N, M, MOD), b = powMod(N, M/2, MOD);

        long u = (a * (a + 1) % MOD) * inv2 % MOD;
        long v = (((((b * (b + 1) % MOD) * inv2) % MOD) * (b * 2 + 1)) % MOD) * inv3 % MOD;

        long res = (MOD + u - v) % MOD;
        res.writeln;
    }
}

long powMod(long x, long y, long z) {
    long res = 1;
    while (y > 0) {
        if (y % 2 == 1) {
            res *= x;
            if (res > z) res %= z;
        }
        x *= x;
        if (x > z) x %= z;
        y /= 2;
    }
    return res;
}