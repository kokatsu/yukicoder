import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = readln.chomp.split.to!(real[]);

    int M;
    readf("%d\n", M);

    --M;

    real A = x.sum / N;

    real D = 0.0;
    foreach (u; x) {
        D += (u - A) ^^ 2;
    }
    D /= N;

    real Q = D.sqrt, T = 50.0;
    if (Q.abs > 1e-9) T += (x[M] - A) * 10.0 / Q;

    int res = to!int(T >= 0.0 ? T.floor : T.ceil);
    res.writeln;
}