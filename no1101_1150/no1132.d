import std;

void main() {
    long a, b, c, d, p, q;
    readf("%d %d %d %d %d %d\n", a, b, c, d, p, q);

    long M = long.min, m = long.max;
    long XM, Xm;
    foreach (x; p .. q+1) {
        long x2 = x * x, x3 = x * x2;
        long fx = a * x3 + b * x2 + c * x + d;

        if (M < fx) {
            M = fx;
            XM = x;
        }
        if (m > fx) {
            m = fx;
            Xm = x;
        }
    }

    writeln(M, " ", XM, " ", m, " ", Xm);
}