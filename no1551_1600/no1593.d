import std;

void main() {
    long N;
    readf("%d\n", N);

    auto squares = iota(0L, N+1).map!(i => i * i).assumeSorted;

    int res;
    foreach (i; 1 .. N) {
        long M = squares[N] - squares[i];
        if (squares.contains(M)) {
            ++res;
        }
    }

    res.writeln;
}