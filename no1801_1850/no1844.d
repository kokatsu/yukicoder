import std;

void main() {
    int L;
    readf("%d\n", L);

    long res = 1;
    foreach (_; 0 .. L) {
        long P, e;
        readf("%d %d\n", P, e);

        long v = powMod(P-1, M-2);
        long s = v * v;
        if (s > M) s %= M;

        long num = powMod(P, e+2);
        ulong mul = (s * (num + M - P) + M - (v * (e + 1) % M));
        if (mul > M) mul %= M;

        res *= mul;
        if (res > M) res %= M;
    }

    res.writeln;
}

enum long M = 10 ^^ 9 + 7;

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y & 1) {
            res *= x;
            if (res > M) res %= M;
        }
        x *= x;
        if (x > M) x %= M;
        y >>= 1;
    }
    return res;
}