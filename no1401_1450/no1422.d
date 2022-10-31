import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = 1;
    if (N % 2 == 0) res += N / 2;

    res.writeln;
}