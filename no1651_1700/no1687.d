import std;

void main() {
    long N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(long[]);
    auto R = iota(1L, N+1).array;

    zip(P, R).sort!"a[0] > b[0]";

    long ttl = N * (N + 1) / 2;
    long res;
    foreach (r; R) {
        long tmp = ttl - 2 * r;
        if (res < tmp) {
            res = tmp;
        }
        ttl -= r;
    }

    res.writeln;
}