import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int A, B;
        readf("%d %d\n", A, B);

        int res = B * (A + 1);
        res.writeln;
    }
}