import std;

void main() {
    long N, M, C;
    readf("%d %d %d\n", N, M, C);

    auto a = readln.chomp.split.to!(long[]);
    auto b = readln.chomp.split.to!(long[]);

    auto B = b.sort;

    long win;
    foreach (A; a) {
        win += B.upperBound(C/A).length;
    }

    real res = win.to!real / (N * M);
    format("%.10f", res).writeln;
}