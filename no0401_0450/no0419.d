import std;

void main() {
    real a, b;
    readf("%f %f\n", a, b);

    real res = hypot(a, b);

    if (a != b) {
        if (a > b) {
            swap(a, b);
        }

        res = min(res, sqrt(b*b-a*a));
    }

    format("%.10f", res).writeln;
}