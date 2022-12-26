import std;

void main() {
    int n;
    readf("%d\n", n);

    auto A = new int[](n), B = new int[](n);
    foreach (i; 0 .. n) readf("%d %d\n", A[i], B[i]);

    zip(A, B).sort!"a[0].to!real / a[1] > b[0].to!real / b[1]";

    foreach (a, b; zip(A, B)) writeln(a, " ", b);
}