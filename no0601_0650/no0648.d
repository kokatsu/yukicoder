import std;

void main() {
    long n;
    readf("%d\n", n);

    long f(long x) {
        if (x % 2 == 0) return x / 2 * (x + 1);
        else return (x + 1) / 2 * x;
    }

    long ok, ng = int.max.to!long;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;
        (f(mid) <= n ? ok : ng) = mid;
    }

    if (f(ok) == n) {
        writeln("YES");
        ok.writeln;
    }
    else {
        writeln("NO");
    }
}