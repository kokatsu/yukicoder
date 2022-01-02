import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N * 3;
    int S = M.to!real.sqrt.floor.to!int;
    auto sieve = iota(0, M+1).map!(i => i == 2 || (i > 2 && i % 2 == 1)).array;
    foreach (i; iota(3, S+1, 2)) {
        if (!sieve[i]) {
            continue;
        }

        foreach (j; iota(i*i, M+1, i)) {
            sieve[j] = false;
        }
    }

    auto primes = iota(0, M+1).filter!(i => sieve[i]).array;
    auto len = primes.length;

    long res;
    auto cnts = new long[](M);

    foreach (i; 2 .. len) {
        int b = primes[i-1], c = primes[i];

        if (c > N) break;

        foreach (j; 0 .. i-1) {
            int a = primes[j];

            ++cnts[a+b];
        }

        foreach (p; primes) {
            if (p >= c) {
                res += cnts[p-c];
            }
        }
    }

    res.writeln;
}