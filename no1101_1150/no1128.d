import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = N;
    if (N % 2 == 0) ++res;

    res.writeln;
}