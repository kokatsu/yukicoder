import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    int res;
    foreach (i; A .. B+1) {
        foreach (j; C .. D+1) {
            if (i == j) continue;
            ++res;
        }
    }

    res.writeln;
}