import std;

void main() {
    real P, Q;
    readf("%f %f\n", P, Q);

    bool f(real x) {
        return x * x <= P + Q * x * log2(x);
    }

    real eps = 1e-8;
    real ok = 1.0, ng = 1e12;
    while (ng - ok > eps) {
        real mid = (ok + ng) / 2.0;
        (f(mid) ? ok : ng) = mid;
    }

    writefln("%.10f", ok);
}