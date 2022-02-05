import std;

void main() {
    long N;
    readf("%d\n", N);

    long S = N.to!real.sqrt.floor.to!long;

    long res = N;
    foreach (i; 2 .. S+1) {
        if (N % i == 0) {
            if (i > 2) {
                res = min(res, i);
            }

            if (N / i > 2) {
                res = min(res, N/i);
            }
        }
    }

    res.writeln;
}