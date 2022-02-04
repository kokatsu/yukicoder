import std;

void main() {
    long N, a, b, c;
    readf("%d\n%d %d %d\n", N, a, b, c);

    bool isOK = ((a < b && a < c) || (b < a && c < a));

    writeln(isOK ? "Yes" : "No");
}