import std;

void main() {
    int L, R;
    readf("%d %d\n", L, R);

    int N = R * 2 + 10;
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

    int res;
    foreach (i; L .. R) {
        if (sieve[i]) ++res;
        if (sieve[i*2+1]) ++res;
    }

    if (sieve[R]) ++res;

    res.writeln;
}