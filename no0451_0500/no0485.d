import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    if (B % A == 0) writeln(B/A);
    else writeln("NO");
}