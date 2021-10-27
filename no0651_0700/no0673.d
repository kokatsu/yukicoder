import std;

void main() {
    ulong B, C, D;
    readf("%d %d %d\n", B, C, D);

    ulong M = 1000000007;

    ulong res;
    if (C % M == 1) {
        res = (B % M) * (D % M) % M;
    }
    else {
        ulong A = (B % M) * (C % M) % M;
        res = A * ((powmod(C, D, M) + M - 1) % M) % M * powmod(C-1, M-2, M) % M;
    }

    res.writeln;
}