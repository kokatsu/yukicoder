import std;

void main() {
    int L, M, N;
    readf("%d\n%d\n%d\n", L, M, N);

    int res;

    M += N / 25;
    res += N % 25;

    L += M / 4;
    res += M % 4;

    res += L % 10;

    res.writeln;
}