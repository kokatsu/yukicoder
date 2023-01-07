import std;

void main() {
    long N;
    readf("%d\n", N);

    long[long] a;
    a[0] = 1;

    long f(long x) {
        if (x !in a) a[x] = f(x/3) + f(x/5);
        return a[x];
    }

    long res = f(N);
    res.writeln;
}