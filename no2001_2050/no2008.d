import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto M = 10 ^^ 9 + 7;

    zip(A, B).sort!"a[0] * (b[1] - 1) < b[0] * (a[1] - 1)";

    long res, x = 1;
    foreach (a, b; zip(A, B)) {
        res = (res + a * x) % M;
        x = (x * b) % M;
    }

    res.writeln;
}