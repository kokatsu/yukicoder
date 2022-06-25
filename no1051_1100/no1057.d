import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = min(A, B) * 2;
    if (A == B) --res;

    res.writeln;
}