import std;

void main() {
    int N;
    readf("%d\n", N);

    int limit = 10 ^^ 5;
    int size = limit * 2;
    int ssqrt = size.to!real.sqrt.floor.to!int;
    auto sieve = iota(0, size).map!(i => i == 2 || (i > 2 && i % 2 == 1)).array;
    foreach (i; iota(3, ssqrt, 2)) {
        if (!sieve[i]) {
            continue;
        }
        foreach (j; iota(i*i, size, i)) {
            sieve[j] = false;
        }
    }

    auto nice = [1L];
    auto list = iota(0L, size).filter!(i => i > limit && sieve[i]).take(N).array;
    foreach (i; 0 .. N) {
        foreach (j; i .. N) {
            nice ~= list[i] * list[j];
        }
    }

    nice.sort;
    nice[N-1].writeln;
}