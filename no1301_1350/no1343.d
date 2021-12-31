import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long M = A.sum;

    long res, num = 1;
    foreach_reverse (a; A) {
        res = (res + a * num) % M;
        num = (num * K) % M;
    }

    res.writeln;
}