import std;

void main() {
    long n;
    readf("%d\n", n);

    bool[long] L, R;
    L[0] = R[0] = true;
    foreach (i; 0 .. n) {
        long A, B;
        readf("%d %d\n", A, B);

        bool[long] nxt;
        if (i < n / 2) {
            foreach (l; L.byKey) {
                nxt[l+A] = nxt[l-B] = true;
            }
            L = nxt;
        }
        else {
            foreach (r; R.byKey) {
                nxt[r+A] = nxt[r-B] = true;
            }
            R = nxt;
        }
    }

    auto S = R.keys.sort;
    long res = long.max;
    foreach (l; L.byKey) {
        auto lb = S.lowerBound(-l+1);
        if (!lb.empty) res = min(res, abs(l+lb.back));

        auto ub = S.upperBound(-l-1);
        if (!ub.empty) res = min(res, abs(ub.front+l));
    }

    res.writeln;
}