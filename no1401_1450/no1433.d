import std;

void main() {
    int N;
    readf("%d\n", N);

    string S = readln.chomp;

    auto a = readln.chomp.split.to!(long[]);

    long amax, amin;

    auto dpmax = new long[](N+1), dpmin = new long[](N+1);
    dpmax[0] = long.min / 2, dpmin[0] = long.max / 2;
    foreach (i, s; S) {
        if (s == 'B') {
            a[i] *= -1;
        }

        amax = max(amax+a[i], a[i]), amin = min(amin+a[i], a[i]);

        dpmax[i+1] = max(dpmax[i], amax);
        dpmin[i+1] = min(dpmin[i], amin);
    }

    long res = max(dpmax[N].abs, dpmin[N].abs);
    res.writeln;
}