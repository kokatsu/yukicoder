import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    A ~= A.fold!"a ^ b";

    --K;
    K %= N + 1;

    A[K].writeln;
}