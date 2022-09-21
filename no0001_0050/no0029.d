import std;

void main() {
    int N;
    readf("%d\n", N);

    auto cnts = new int[](11);
    foreach (_; 0 .. N) {
        int a, b, c;
        readf("%d %d %d\n", a, b, c);

        ++cnts[a], ++cnts[b], ++cnts[c];
    }

    int res;
    foreach (ref cnt; cnts) {
        int d = cnt / 2;
        res += d, cnt -= d * 2;
    }

    res += cnts.sum / 4;

    res.writeln;
}