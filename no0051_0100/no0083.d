import std;

void main() {
    int N;
    readf("%d\n", N);

    if (N % 2 == 0) {
        writeln('1'.repeat.take(N/2));
    }
    else {
        writeln('7', '1'.repeat.take((N-3)/2));
    }
}