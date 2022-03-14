import std;

void main() {
    long n;
    readf("%d\n", n);

    auto a = new long[](n);
    foreach (i; 0 .. n) readf("%d\n", a[i]);

    long res;
    foreach (i; 0 .. n-2) {
        foreach (j; i+1 .. n-1) {
            long g = gcd(a[i], a[j]);

            foreach (k; j+1 ..n) {
                if (gcd(g, a[k]) == 1) ++res;
            }
        }
    }

    res.writeln;
}