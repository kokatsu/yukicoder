import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int res;
    foreach (_; 0 .. N) {
        auto A = readln.chomp;
        res += A.count('W');
    }

    res.writeln;
}