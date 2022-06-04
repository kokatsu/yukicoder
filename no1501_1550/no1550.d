import std;

void main() {
    long n;
    readf("%d\n", n);

    long m = 10 ^^ 9 + 7;

    long res = n % m;
    res.writeln;
}