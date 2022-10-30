import std;

void main() {
    long T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        long D = A * B * C;
        writeln(D, " ", D, " ", D);
    }
}