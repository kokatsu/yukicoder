import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sum;

    int res;
    foreach (i; 0 .. 101) {
        if ((S + i) % N == 0) ++res;
    }

    res.writeln;
}