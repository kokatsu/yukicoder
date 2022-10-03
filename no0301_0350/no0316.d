import std;

void main() {
    long N, a, b, c;
    readf("%d\n%d %d %d\n", N, a, b, c);

    long f(long x) {
        return N / x;
    }

    long res = f(a) + f(b) + f(c);

    long g1 = gcd(a, b), g2 = gcd(b, c), g3 = gcd(c, a);
    long ab = a * b / g1;
    res -= f(ab) + f(b*c/g2) + f(c*a/g3);

    long g = gcd(ab, c);
    long abc = ab / g * c;
    res += f(abc);

    res.writeln;
}