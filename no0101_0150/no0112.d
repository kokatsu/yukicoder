import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto S = a.sum / (N - 1);

    int C, T;
    foreach (A; a) {
        ++(S - A == 2 ? C : T);
    }

    writeln(C, " ", T);
}