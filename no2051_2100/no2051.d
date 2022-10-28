import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    bool f(long x) {
        return x % B == 0;
    }

    long res, d = 1;
    while (d * d <= A) {
        if (A % d == 0) {
            if (f(d)) ++res;
            if (d * d != A && f(A/d)) ++res;
        }

        ++d;
    }

    res.writeln;
}