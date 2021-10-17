import std;

void main() {
    int N;
    readf("%d\n", N);

    if (N % 2 == 0) {
        writeln(N);
    }
    else {
        writeln(N+1);
    }
}