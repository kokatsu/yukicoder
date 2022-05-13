import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    int mx;
    auto fruits = new int[](4);
    foreach (x; a) {
        mx = max(mx, ++fruits[x]);
    }

    ulong res;
    foreach (i, f; fruits) {
        if (mx == 3 && f == 3) res = i;
        if (mx == 2 && f == 1) res = i;
        if (mx == 1 && f == 0) res = i;
    }

    res.writeln;
}