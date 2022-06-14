import std;

void main() {
    long N;
    readf("%d\n", N);

    long f(long x) {
        long ret;
        while (x > 0) {
            ret += x % 10;
            x /= 10;
        }
        return ret;
    }

    long res = N;
    foreach (i; 1 .. 100) {
        res = f(res);
    }

    res.writeln;
}