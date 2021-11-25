import std;

void main() {
    long N, p;
    readf("%d %d\n", N, p);

    enum long M = 10 ^^ 9 + 7;

    auto a = new long[](N+1);
    if (N >= 2) {
        a[2] = 1;
    }

    foreach (i; 3 .. N+1) {
        a[i] = (p * a[i-1] + a[i-2]) % M;
    }

    auto b = a.cumulativeFold!((a, b) => (a + b) % M).array;

    long res;
    foreach (i; 1 .. N+1) {
        res = (res + a[i] * b[i]) % M;
    }

    res.writeln;
}