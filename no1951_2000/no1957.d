import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long res = min(A, B);

    auto x = A.to!string(2);
    auto y = B.to!string(2);

    auto u = x.length, v = y.length;
    if (u == v) res = min(res, (1<<(u-1))-1);

    res.writeln;
}