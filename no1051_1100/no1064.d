import std;

void main() {
    long a, b ,c, d;
    readf("%d %d %d %d\n", a, b, c, d);

    long s = a - c;
    long D = s * s - 8 * (b - d);

    if (D < 0) {
        writeln("No");
    }
    else if (D == 0) {
        writeln("Yes");
    }
    else {
        real p = (a + c).to!real / 2.0;
        real q = (b + d).to!real / 2.0;
        format("%.10f %.10f", p, q).writeln;
    }
}