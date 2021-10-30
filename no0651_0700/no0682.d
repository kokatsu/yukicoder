import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int S = A + B;
    int res;

    foreach (i; A .. B+1) {
        if ((S + i) % 3 == 0) {
            ++res;
        }
    }

    res.writeln;
}