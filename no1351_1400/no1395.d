import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto C = readln.chomp.split.to!(int[]);

    if (C[0] <= X && X <= C[N-1]) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}