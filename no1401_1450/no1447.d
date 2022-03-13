import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = new long[](N), Y = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", X[i], Y[i]);

    long res;
    foreach (i; 0 .. N) {
        long j = (i + 1) % N;
        res += X[i] * Y[j] - Y[i] * X[j];
    }

    res.writeln;
}