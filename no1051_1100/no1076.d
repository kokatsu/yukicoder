import std;

void main() {
    real p;
    readf("%f\n", p);

    real res = p / (1.0 - p);
    writefln("%.10f", res);
}