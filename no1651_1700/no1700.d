import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (i; 0 .. T) {
        long N;
        readf("%d\n", N);

        N.to!real.sqrt.floor.to!long.writeln;
    }
}