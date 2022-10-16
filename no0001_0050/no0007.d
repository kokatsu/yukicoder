import std;

void main() {
    int N;
    readf("%d\n", N);

    auto sieve = new bool[](N+1);
    sieve[2..N+1] = true;
    int d = 2;
    while (d * d <= N) {
        if (sieve[d]) {
            foreach (i; iota(d*d, N+1, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(N+1).filter!(i => sieve[i]).array;

    auto dp = new bool[](N+1);
    dp[0..2] = true;
    foreach (i; 2 .. N+1) {
        foreach (p; primes) {
            if (i < p) break;

            if (!dp[i-p]) {
                dp[i] = true;
                break;
            }
        }
    }

    writeln(dp[N] ? "Win" : "Lose");
}