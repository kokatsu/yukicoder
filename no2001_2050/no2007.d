import std;

void main() {
    ulong a, n;
    readf("%d %d\n", a, n);

    ulong M = 10 ^^ 9 + 7;

    ulong res = powmod(a, n, M);

    M.writeln;
    res.writeln;
}