import std;
import core.bitop;

void main() {
    ulong n;
    readf("%d\n", n);

    int b = n.bsr;
    ulong res = n;
    foreach (j; 2 .. b+1) {
        ulong i = (n ^^ (1.0 / j)).floor.to!ulong;
        while ((i + 1) ^^ j <= n) {
            ++i;
        }
        ulong k = n - i ^^ j;
        res = min(res, i+j+k);
    }

    res.writeln;
}