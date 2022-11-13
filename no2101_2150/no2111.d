import std;

enum long MOD = 998244353;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    auto pow2 = new long[](N+1);
    pow2[0] = 1;
    foreach (i; 1 .. N+1) pow2[i] = (pow2[i-1] * 2) % MOD;

    long res;
    foreach (i, x; a) {
        addMod(res, x*(pow2[N-i-1]-pow2[i]+MOD));
    }

    res.writeln;
}