import std;

void main() {
    long A, B;
    readf("%d\n%d\n", A, B);

    long res = B;
    if (A != 1) res = B / (1 - A);

    res.writeln;
}