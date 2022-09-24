import std;

void main() {
    int N, K;
    readf("%d\n%d\n", N, K);

    int mn = int.max, mx;
    foreach (_; 0 .. N) {
        int n;
        readf("%d\n", n);

        mn = min(mn, n), mx = max(mx, n);
    }

    int res = mx - mn;
    res.writeln;
}