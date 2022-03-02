import std;

void main() {
    int N;
    readf("%d\n", N);

    dchar[] head, tail;
    foreach (_; 0 .. N) {
        int T;
        dchar S;
        readf("%d %c\n", T, S);

        (T == 1 ? head : tail) ~= S;
    }

    head.reverse;

    dchar[] res = head ~ tail;
    res.writeln;
}