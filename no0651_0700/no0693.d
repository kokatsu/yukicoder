import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    int res;
    foreach (i, a; A) res += abs(a - i.to!int - 1);

    res.writeln;
}