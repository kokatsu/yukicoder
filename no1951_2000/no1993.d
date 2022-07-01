import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(real[]);

    real L = 1000.0;

    real d = L;
    foreach (a; A) d *= (L - a) / L;

    real res = L - d;
    writefln("%.10f", res);
}