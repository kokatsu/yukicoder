import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.sort;

    K *= 2;
    long res;
    foreach (a; A) {
        auto lb = B.lowerBound((K+a-1)/a);
        res += N - lb.length;
    }

    res.writeln;
}