import std;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    auto S = readln.chomp.split.to!(long[]);

    long res = S.sum - (N - 1) * X;
    res.writeln;
}