import std;

void main() {
    int P1, P2;
    readf("%d\n%d\n", P1, P2);

    int N;
    readf("%d\n", N);

    bool[int] list;
    int res;
    foreach (_; 0 .. N) {
        int R;
        readf("%d\n", R);

        if (R in list) res += P1 + P2;

        list[R] = true;
    }

    res.writeln;
}