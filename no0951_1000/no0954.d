import std;

void main() {
    auto a = new long[](5);
    foreach (i; 0 .. 5) readf("%d\n", a[i]);

    long lim = 10L ^^ 15 + 1;

    long[] fib = [1, 1];
    long idx = 2;
    while (fib[idx-1] < lim) {
        fib ~= fib[idx-1] + fib[idx-2];
        ++idx;
    }

    a.reverse;

    long res;
    foreach (i; 0 .. 5) {
        if (fib.canFind(a[0..i+1])) {
            res = max(res, i+1);
        }
    }

    res.writeln;
}