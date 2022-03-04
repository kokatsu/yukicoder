import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    if (A > B) swap(A, B);
    B -= A;

    long res = A * 2;
    if (B > 0) res += B * 2 - 1;

    res.writeln;
}