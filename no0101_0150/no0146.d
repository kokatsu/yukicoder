import std;

void main() {
    int N;
    readf("%d\n", N);

    long res, M = 10 ^^ 9 + 7;

    foreach (_; 0 .. N) {
        long C, D;
        readf("%d %d\n", C, D);

        res = (res + ((C + 1) / 2) % M * (D % M)) % M;
    }

    res.writeln;
}