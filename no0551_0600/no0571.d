import std;

void main() {
    auto H = new int[](3), W = new int[](3);
    foreach (i; 0 .. 3) readf("%d %d\n", H[i], W[i]);

    auto A = new dchar[](3);
    foreach (i; 0 .. 3) A[i] = i + 'A';

    zip(H, W, A).sort!"a[0] == b[0] ? a[1] < b[1] : a[0] > b[0]";

    foreach (a; A) a.writeln;
}