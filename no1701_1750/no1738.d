import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto W = readln.chomp.split.to!(long[]);

    long S = W.sum;

    foreach (i; 0 .. N) {
        long A;
        if (S > 0) {
            A = W[i] * M / S;
        }

        if (i == N - 1) {
            writeln(A);
        }
        else {
            write(A, " ");
        }
    }
}