import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N;
        readf("%d\n", N);

        long res = 2 * N * (N - 1) * (N - 2) / 3;
        res.writeln;
    }
}