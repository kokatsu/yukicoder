import std;

void main() {
    real xa, ya, xb, yb;
    readf("%f %f\n%f %f\n", xa, ya, xb, yb);

    xa = -xa;

    real dx = xb - xa, dy = yb - ya;

    real res = dy / dx * (-xa) + ya;
    writefln("%.10f", res);
}