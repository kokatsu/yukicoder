import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long L = 2 * 10 ^^ 9;

    long res = A > B ? L - B - 1 : B - 2;
    res.writeln;
}