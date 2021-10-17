import std;

void main() {
    int N;
    readf("%d\n", N);

    if (N == 0) {
        writeln(0);
    }
    else {
        writeln("0.", "142857".cycle.take(N));
    }
}