import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long M = 1000000007;

    long res = A * B % M;
    res.writeln;
}