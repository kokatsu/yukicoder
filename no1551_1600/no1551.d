import std;

void main() {
    real L;
    readf("%f\n", L);

    real a = L / 6.0;

    real res = a * a * sqrt(3.0);
    writefln("%.15f", res);
}