import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto S = A.fold!"a + b";
    writeln(S % N == 0 ? "Yes" : "No");
}