import std;

void main() {
    real PX, PY, QX, QY;
    readf("%f %f\n%f %f\n", PX, PY, QX, QY);

    real res = (abs(PX-QX) + abs(PY-QY)) / 2.0;
    writefln("%.10f", res);
}