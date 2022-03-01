import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto L = readln.chomp.split.to!(int[]);

    auto cnts = new int[](M+1);
    foreach (l; L) {
        if (l <= M) ++cnts[l];
    }

    foreach (i, c; cnts) {
        if (i > 0) writeln(i, " ", c);
    }
}