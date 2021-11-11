import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = new long[](n+1);
    foreach (i; 0 .. n+1) {
        readf("%d\n", a[i]);
    }

    auto b = new long[](n+1);
    foreach (i; 0 .. n+1) {
        readf("%d\n", b[i]);
    }

    enum long M = 10 ^^ 9 + 7;

    auto c = b.cumulativeFold!((a, b) => (a + b) % M).array;

    long res;
    foreach (i; 0 .. n+1) {
        res = (res + a[i] * c[n-i] % M) % M;
    }

    res.writeln;
}