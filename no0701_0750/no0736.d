import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    auto g = a.fold!gcd;

    a[] /= g;

    writefln("%(%s:%)", a);
}