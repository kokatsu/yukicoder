import std;

void main() {
    int N;
    readf("%d\n", N);

    int A, B;
    foreach (_; 0 .. N) {
        int T;
        string S;
        readf("%d %s\n", T, S);

        int len = S.length.to!int;
        int num = min(len, T*12/1000);

        A += num, B += len - num;
    }

    writeln(A, " ", B);
}