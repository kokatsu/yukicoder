import std;

void main() {
    real a, b, c, d, e, f;
    readf("%f %f %f %f %f %f\n", a, b, c, d, e, f);

    real det = a * e - b * d;

    real x = (e * c - b * f) / det;
    real y = (a * f - d * c) / det;

    writefln("%.10f %.10f", x, y);
}