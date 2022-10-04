import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    int res = N / gcd(N, D) - 1;
    res.writeln;
}