import std;

void main() {
    long T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        long res = A * powMod(10, C-1, B) % B * 10 / B;
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