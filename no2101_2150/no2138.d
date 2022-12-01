import std;

void main() {
    int A, B, C, D, E;
    readf("%d %d %d %d %d\n", A, B, C, D, E);

    int res = A - B;
    if (D > E) res += C * (D - E);

    res.writeln;
}