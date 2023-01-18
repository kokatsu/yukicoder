import std;

enum real M = 1e3;

void main() {
    real x, y, h;
    readf("%f %f %f\n", x, y, h);

    x *= M, y *= M;
    if (x > y) swap(x, y);

    int res;

    void f(ref real u, ref real v) {
        if (u > v) {
            ++res;
            u /= 2.0, h *= 2.0;
            f(u, v);
        }
    }

    f(x, h), f(y, h);

    res.writeln;
}