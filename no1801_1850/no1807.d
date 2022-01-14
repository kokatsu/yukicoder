import std;

void main() {
    int N;
    readf("%d\n", N);

    real P;
    readf("%f\n", P);

    real res = 0.0;
    if (N < 200) {
        real q = 1.0;
        foreach (i; 0 .. N) {
            res += q * P;
            q *= (1.0 - P);
        }
    }
    else {
        res = 1.0;
    }

    format("%.10f", res).writeln;
}