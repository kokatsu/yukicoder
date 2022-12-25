import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = gcd(N, N*(N-1)/2);
    res.writeln;
}