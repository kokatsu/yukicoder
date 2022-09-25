import std;

void main() {
    long N;
    readf("%d\n", N);

    long C = N ^^ 3;

    real res = 5.0 * (3.0 + sqrt(5.0)) * C / 12.0;
    writefln("%.15f", res);
}