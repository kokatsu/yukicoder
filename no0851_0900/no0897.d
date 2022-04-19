import std;

void main() {
    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long N, K;
        readf("%d %d\n", N, K);

        long res;
        if (K == 1) {
            res = N - 1;
        }
        else {
            long P = 1, S = 1;
            while (S < N) {
                ++res;
                P *= K;
                S += P;
            }
        }

        res.writeln;
    }
}