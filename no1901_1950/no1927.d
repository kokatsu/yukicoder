import std;

void main() {
    long N;
    readf("%d\n", N);

    auto S = readln.chomp;

    long M = 998_244_353;

    long cntAB = S.count!(s => (s == 'A' || s == 'B'));

    long res = 1;
    foreach (i; 0 .. cntAB) {
        res = (res * (N - i)) % M;
        res = (res * powMod(i+1, M-2, M)) % M;
    }

    res.writeln;
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