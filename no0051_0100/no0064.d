import std;

void main() {
    long F0, F1, N;
    readf("%d %d %d\n", F0, F1, N);

    long M = N % 3;
    if (M == 0) {
        writeln(F0);
    }
    else if (M == 1) {
        writeln(F1);
    }
    else {
        writeln(F0^F1);
    }
}