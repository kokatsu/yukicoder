import std;

void main() {
    long a, b, c;
    readf("%d %d %d\n", a, b, c);

    long X;
    readf("%d\n", X);

    long g = gcd(gcd(a, b), c);

    writeln(X % g == 0 ? "Yes" : "No");
}