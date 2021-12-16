import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto A = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", A[i]);
    }

    auto B = A.dup.sort;
    foreach (a; A) {
        B.lowerBound(a-D+1).length.writeln;
    }
}