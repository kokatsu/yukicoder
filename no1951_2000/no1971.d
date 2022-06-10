import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](N, N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            A[i][j] = (i + j) % N + 1;
        }
    }

    foreach (a; A) writefln("%(%s %)", a);
}