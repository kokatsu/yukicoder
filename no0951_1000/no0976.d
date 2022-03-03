import std;

void main() {
    ulong M;
    readf("%d\n", M);

    ulong b = 2, p = 128;

    ulong res = powmod(b, p, M);
    res.writeln;
}