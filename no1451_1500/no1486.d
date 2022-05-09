import std;

void main() {
    long A, B, C, D, E;
    readf("%d %d %d %d %d\n", A, B, C, D, E);

    long s = A + B, t = C + D;
    long l = s * t / gcd(s, t);

    auto R1 = new bool[](l), R2 = new bool[](l);
    foreach (i; 0 .. l) {
        R1[i] = (i % s < A);
        R2[i] = (i % t < C);
    }

    auto both = new long[](l);
    foreach (i; 0 .. l) {
        if (i > 0) both[i] += both[i-1];
        if (R1[i] && R2[i]) ++both[i];
    }

    auto d = E / l, r = E % l;

    long res = both.back * d;
    if (r > 0) res += both[r-1];

    res.writeln;
}