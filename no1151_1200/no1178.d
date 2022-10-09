import std;

void main() {
    real a, b, c, d, e, f;
    readf("%f %f %f %f %f %f\n", a, b, c, d, e, f);

    real squared = (f - e) / a + (c * c + d * d) / (4 * a * a);

    real res = squared.sqrt;
    writefln("%.10f", res);
}