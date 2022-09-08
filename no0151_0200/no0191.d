import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = readln.chomp.split.to!(int[]);

    int res, S = C.sum, M = 30;
    foreach (c; C) {
        if (c * 10 <= S) res += M;
    }

    res.writeln;
}