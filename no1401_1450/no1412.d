import std;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    long res = 2;
    if (A == C || B == D || abs(A-C) + abs(B-D) <= 3) {
        res = 1;
    }

    res.writeln;
}