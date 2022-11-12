import std;

void main() {
    int N;
    readf("%d\n", N);

    int L = 64;
    auto sieve = new bool[](L);
    sieve[2..L] = true;
    uint d = 2;
    while (d * d < L) {
        if (sieve[d]) {
            foreach (i; iota(d*d, L, d)) {
                sieve[i] = false;
            }
        }
        ++d;
    }

    auto primes = iota(L).filter!(i => sieve[i]).array;

    auto res = new string[](L);
    res[0] = "0", res[1] = "1";

    foreach (p; primes) {
        res[p] = "Sosu!";
        if (p ^^ 2 < L) res[p^^2] = "Heihosu!";
        if (p ^^ 3 < L) res[p^^3] = "Ripposu!";
    }

    foreach (i; 2 .. L) {
        if (i ^^ 2 < L) res[i^^2] = "Heihosu!";
        if (i ^^ 3 < L) res[i^^3] = "Ripposu!";
    }

    foreach (i; 2 .. L) {
        if (!res[i].empty) continue;

        int num = 1, div = 2;
        while (div * div <= i) {
            if (i % div == 0) {
                num += div;
                if (div * div != i) num += i / div;
            }

            ++div;
        }

        res[i] = (num == i ? "Kanzensu!" : i.to!string);
    }

    res[N].writeln;
}