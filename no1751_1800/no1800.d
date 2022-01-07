import std;

void main() {
    ulong N, M;
    readf("%d %d\n", N, M);

    ulong MOD = 10 ^^ 9 + 7;

    ulong num = powmod(2uL, M, MOD);
    num = (num + MOD - 1) % MOD;

    ulong res = (num * powmod(2uL, MOD-2, MOD)) % MOD;
    res.writeln;
}