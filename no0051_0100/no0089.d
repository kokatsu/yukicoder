import std;

void main() {
    real C, Rin, Rout;
    readf("%f\n%f %f", C, Rin, Rout);

    real R = (Rin + Rout) / 2.0, r = (Rout - Rin) / 2.0;

    real res = 2.0 * (PI * r) ^^ 2 * R * C;
    format("%.10f", res).writeln;
}