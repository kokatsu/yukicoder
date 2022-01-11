import std;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    long res;
    long[long] list;
    foreach (_; 0 .. N) {
        long A;
        readf("%d\n", A);

        long B = A ^ X;
        if (B in list) res += list[B];

        ++list[A];
    }

    res.writeln;
}