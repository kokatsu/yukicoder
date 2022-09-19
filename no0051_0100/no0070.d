import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (_; 0 .. N) {
        int H, M, h, m;
        readf("%d:%d %d:%d\n", H, M, h, m);

        M += H * 60, m += h * 60;
        if (M > m) m += 24 * 60;

        res += m - M;
    }

    res.writeln;
}