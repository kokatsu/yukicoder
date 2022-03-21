import std;

void main() {
    real r, d;
    readf("%f %f\n", r, d);

    real AL = sqrt(d*d-r*r);
    format("%.10f", AL).writeln;
}