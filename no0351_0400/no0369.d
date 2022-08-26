import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int v;
    readf("%d\n", v);

    int res = A.sum - v;
    res.writeln;
}