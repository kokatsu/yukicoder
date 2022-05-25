import std;

void main() {
    long N, M, S;
    readf("%d %d %d\n", N, M, S);

    auto A = readln.chomp.split.to!(long[]);

    long D = A.sum - S;
    writeln(D % M == 0 ? "Yes" : "No");
}