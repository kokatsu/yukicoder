import std;

void main() {
    long T, A, B;
    readf("%d %d %d\n", T, A, B);

    long C = A / gcd(A, B);

    long res = (T - 1) / A + (T - 1) / B - ((T - 1) / B) / C + 1;
    res.writeln;
}