import std;

void main() {
    long a, b;
    readf("%d %d\n", a, b);

    long MOD = 998244353;

    --a, --b;

    long L = a + b;

    auto fac = new long[](L+1);
    auto finv = new long[](L+1);
    auto inv = new long[](L+1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. L+1) {
        fac[i] = fac[i-1] * i % MOD;
        inv[i] = MOD - inv[MOD%i] * (MOD / i) % MOD;
        finv[i] = finv[i-1] * inv[i] % MOD;
    }

    long comb(long a, long b) {
        if (a < b) return 0;
        if (a < 0 || b < 0) return 0;
        return fac[a] * (finv[b] * finv[a-b] % MOD) % MOD;
    }

    long res = comb(L, a);
    res.writeln;
}