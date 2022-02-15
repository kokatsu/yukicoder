import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long or;
    foreach (a; A) or |= a;

    long res = 1;
    while (true) {
        if (or % 2 == 0) break;
        or /= 2, res *= 2;
    }

    res.writeln;
}