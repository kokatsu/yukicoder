import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    writeln(N % 2 == 1 ? "First" : "Second");
}