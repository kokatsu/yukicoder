import std;

void main() {
    long n;
    readf("%d\n", n);

    auto A = readln.chomp.split.to!(long[]);

    A.sort!"a > b";

    long res, F, space = 1;
    foreach (i, a; A) {
        res += a * F;

        --space;
        if (space <= 0) space = 1 << ++F;
    }

    res.writeln;
}