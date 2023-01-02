import std;

void main() {
    int N, P;
    readf("%d %d\n", N, P);

    int res = N * (100 - P) / 100;
    res.writeln;
}