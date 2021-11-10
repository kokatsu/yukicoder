import std;
import core.bitop;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(BigInt[]);

    bool[BigInt] list;
    foreach (i; 0 .. 2^^N) {
        if (i.popcnt < K) {
            continue;
        }

        BigInt S, M = 1;
        foreach (j; 0 .. N) {
            if ((i >> j) & 1) {
                S += A[j];
                M *= A[j];
            }
        }

        list[S] = true, list[M] = true;
    }

    list.length.writeln;
}