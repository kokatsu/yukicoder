import std;

void main() {
    int T;
    readf("%d\n", T);

    long M = 5 * 10 ^^ 6;
    long S = M.to!real.sqrt.floor.to!long;
    auto sieve = iota(0L, M+1).map!(i => i == 2 || (i > 2 && i % 2 == 1)).array;
    foreach (i; iota(3, S+1, 2)) {
        if (!sieve[i]) {
            continue;
        }

        foreach (j; iota(i*i, M+1, i)) {
            sieve[j] = false;
        }
    }

    foreach (_; 0 .. T) {
        long A, P;
        readf("%d %d\n", A, P);

        long res = -1;
        if (sieve[P]) res = (A % P == 0 ? 0 : 1);

        res.writeln;
    }
}