import std;

void main() {
    ulong A, B, C;
    readf("%d %d %d\n", A, B, C);

    ulong res;
    foreach (i; 1 .. C) {
        if (i > A) break;

        ulong cnt = (A - i) / C + 1;
        res = (res + cnt * powmod(i, B, C)) % C;
    }

    res.writeln;
}