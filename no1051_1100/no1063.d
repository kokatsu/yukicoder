import std;

void main() {
    long n;
    readf("%d\n", n);

    long s = n.to!real.sqrt.floor.to!long;

    foreach_reverse (a; 1 .. s+1) {
        long d = a * a;
        if (n % d == 0) {
            long b = n / d;
            writeln(a, " ", b);
            return;
        }
    }
}