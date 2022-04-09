import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long L, R;
        readf("%d %d\n", L, R);

        --L;

        long num = R.to!real.sqrt.floor.to!long;
        R /= 2;
        num += R.to!real.sqrt.floor.to!long;

        num -= L.to!real.sqrt.floor.to!long;
        L /= 2;
        num -= L.to!real.sqrt.floor.to!long;

        long res = num % 2;
        res.writeln;
    }
}