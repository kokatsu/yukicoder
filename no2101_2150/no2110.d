import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        long res;

        long s = B / 2;
        res += s * 2;
        B -= s * 2;

        long t = min(A, C);
        res += t * 2;
        A -= t, C -= t;

        long u = C / 2;
        res += u;
        C -= u * 2;

        long v = min(A, B);
        res += v;
        A -= v, B -= v;

        res.writeln;
    }
}