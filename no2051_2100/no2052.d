import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    bool[int] list;
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        list[B] = true;
    }

    int res = N - list.length.to!int;
    res.writeln;
}