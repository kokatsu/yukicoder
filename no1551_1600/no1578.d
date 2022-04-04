import std;

void main() {
    ulong A, B, C, K;
    readf("%d %d %d\n%d\n", A, B, C, K);

    ulong MOD = 10 ^^ 9 + 7;

    ulong M = (A * B % MOD) * C % MOD;
    ulong P = powmod(2uL, K, MOD-1);

    ulong res = powmod(M, P, MOD);
    res.writeln;
}