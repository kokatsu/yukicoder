import std;

void main() {
    int N;
    readf("%d\n", N);

    auto y = readln.chomp.split.to!(int[]);

    auto S = y.sum;

    auto res = new int[](N);
    foreach (i, x; y) res[i] = S - (N - 1) * x;

    writefln("%(%s %)", res);
}