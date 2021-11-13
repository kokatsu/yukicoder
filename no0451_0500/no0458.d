import std;

void main() {
    int N;
    readf("%d\n", N);

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

    auto primes = iota(0, N+1).filter!(i => sieve[i]);

    auto dp = new int[](N+1);
    dp[1..N+1] = -1;
    foreach (p; primes) {
        foreach_reverse (i; 0 .. N-p+1) {
            if (dp[i] == -1) {
                continue;
            }

            dp[i+p] = max(dp[i+p], dp[i]+1);
        }
    }

    dp[N].writeln;
}