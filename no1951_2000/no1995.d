import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = new long[](M), B = new long[](M);
    foreach (i; 0 .. M) readf("%d %d\n", A[i], B[i]);

    zip(A, B).sort!"a[1] < b[1]";

    long cnt = 1, pos = B[0];
    foreach (i; 1 .. M) {
        if (pos > A[i]) continue;

        ++cnt, pos = B[i];
    }

    long res = (N - 1) * 2 - cnt;
    res.writeln;
}