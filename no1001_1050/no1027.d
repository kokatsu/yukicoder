import std;

void main() {
    int D1, D2;
    readf("%d %d\n", D1, D2);

    long res;
    if (D2 == D1 || D2 == D1 * 2) res = 4;
    else if (D1 < D2 && D2 < D1 * 2) res = 8;

    res.writeln;
}