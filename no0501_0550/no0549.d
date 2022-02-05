import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = readln.chomp.split.to!(long[]);

    x.sort!"a > b";

    long res = x[0];
    foreach (i; 1 .. N) {
        res += x[i] / 2;
    }

    res.writeln;
}