import std;

void main() {
    int N, M;
    readf("%d\n%d\n", N, M);

    auto res = M.to!string(N);
    res.writeln;
}