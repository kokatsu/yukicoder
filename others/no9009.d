import std;

void main() {
    int N;
    readf("%d\n", &N);

    long res;
    foreach (_; 0 .. N) {
        long A;
        readf("%d\n", &A);
        res += A;
    }

    res.writeln;
}