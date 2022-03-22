import std;

void main() {
    long A, B, C;
    readf("%d %d %d\n", A, B, C);

    A *= 60, C *= 3600;
    long D = A - B;

    long res = -1;
    if (D > 0) res = (C + D - 1) / D;

    res.writeln;
}