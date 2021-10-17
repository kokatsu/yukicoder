import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    enum long M = 10 ^^ 9 + 7;

    auto B = A.cumulativeFold!((a, b) => (a * b) % M).array;

    long res = B[N-1], c = 2;
    foreach_reverse (i; 0 .. N-1) {
        res = (res + (B[i] * c) % M) % M;
        c = (c * 3) % M;
    }

    res.writeln;
}