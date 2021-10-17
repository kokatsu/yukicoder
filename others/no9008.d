import std;

void main() {
    int N;
    readf("%d\n", &N);

    auto A = readln.chomp.split.to!(long[]);

    A.sum.writeln;
}