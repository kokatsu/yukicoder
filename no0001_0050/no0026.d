import std;

void main() {
    int N, M;
    readf("%d\n%d\n", N, M);

    auto isMark = new bool[](4);
    isMark[N] = true;

    foreach (_; 0 .. M) {
        int P, Q;
        readf("%d %d\n", P, Q);

        isMark.swapAt(P, Q);
    }

    foreach (i, m; isMark) {
        if (m) i.writeln;
    }
}