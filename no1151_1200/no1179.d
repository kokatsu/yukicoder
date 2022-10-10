import std;

void main() {
    int a, b, c;
    readf("%d %d %d\n", a, b, c);

    real x = to!real(-b) / (2.0 * a);

    int D = b * b - 4 * a * c;
    if (D > 0) {
        real r = D.to!real.sqrt / (2.0 * a);
        real x1 = x + r, x2 = x - r;
        if (x1 > x2) swap(x1, x2);
        writefln("%.10f %.10f", x1, x2);
    }
    else if (D == 0) {
        writefln("%.10f", x);
    }
    else {
        writeln("imaginary");
    }
}