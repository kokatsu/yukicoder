import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach_reverse (i; 1 .. N+1) {
        foreach (_; 0 .. i) {
            N.write;
        }

        writeln;
    }
}