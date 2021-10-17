import std;

void main() {
    ulong x, N;
    readf("%d %d\n", x, N);

    auto a = readln.chomp.split.to!(ulong[]);

    ulong M = 1000003;
    
    ulong res;
    foreach (e; a) {
        res = (res + powmod(x, e, M)) % M;
    }

    res.writeln;
}