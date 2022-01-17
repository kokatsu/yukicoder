import std;

void main() {
    int N;
    readf("%d\n", N);

    int A, B, p = 1;
    while (N > 0) {
        int d = N % 10;

        if (d == 7) A += p * 6, B += p;
        else A += p * d;

        N /= 10, p *= 10;
    }

    writeln(A, " ", B);
}