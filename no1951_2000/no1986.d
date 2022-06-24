import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = (N % 2 == 0 ? N / 2 : 1);
    res.writeln;
}