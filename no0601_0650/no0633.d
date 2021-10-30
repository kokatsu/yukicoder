import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = new long[](n);
    foreach (i; 1 .. n) {
        readf("%d\n", a[i]);
    }

    long res, rem;
    foreach (i; 0 .. n) {
        long b, c;
        readf("%d %d\n", b, c);

        res += rem * a[i];
        rem += c - b;
    }

    res.writeln;
}