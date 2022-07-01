import std;

void main() {
    int X;
    readf("%d\n", X);

    int[] A = [2, 2, -1, -1, 2, -1, -1];
    auto L = A.length;

    int res, pos, idx;
    while (pos != X) {
        res += A[idx%L].abs;
        pos += A[idx%L];
        ++idx;
    }

    res.writeln;
}