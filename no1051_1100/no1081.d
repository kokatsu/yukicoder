import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long MOD = 10 ^^ 9 + 7;

    auto fac = new long[](N+1);
    auto finv = new long[](N+1);
    auto inv = new long[](N+1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. N+1) {
        fac[i] = fac[i-1] * i % MOD;
        inv[i] = MOD - inv[MOD%i] * (MOD / i) % MOD;
        finv[i] = finv[i-1] * inv[i] % MOD;
    }

    long comb(long a, long b) {
        return fac[a] * (finv[b] * finv[a-b] % MOD) % MOD;
    }

    long res;
    foreach (i, a; A) {
        res = (res + a * comb(N-1, i)) % MOD;
    }

    res.writeln;
}