import std;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    long res = (A * B) % D;
    res = (res * C) % D;

    res.writeln;
}