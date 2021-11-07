import std;

void main() {
    int N;
    readf("%d\n", N);

    long M = 998244353;

    int S = N.to!real.sqrt.floor.to!int;
    auto sieve = iota(0, N+1).map!(i => i == 2 || (i > 2 && i % 2 == 1)).array;
    foreach (i; iota(3, S+1, 2)) {
        if (!sieve[i]) {
            continue;
        }

        foreach (j; iota(i*i, N+1, i)) {
            sieve[j] = false;
        }
    }

    bool isRemoved;
    long res = 1;
    foreach_reverse (i; 1 .. N+1) {
        if (!isRemoved && sieve[i]) {
            isRemoved = true;
            continue;
        }

        if (!sieve[i]) {
            continue;
        }

        long f = i;
        while (f * i <= N) {
            f *= i;
        }

        res = (res * f) % M;
    }

    res.writeln;
}