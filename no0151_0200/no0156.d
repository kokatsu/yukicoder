import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto C = readln.chomp.split.to!(int[]);

    C.sort;

    int res;
    foreach (c; C) {
        if (M >= c) {
            M -= c;
            ++res;
        }
        else {
            break;
        }
    }

    res.writeln;
}