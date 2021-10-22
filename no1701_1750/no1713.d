import std;

void main() {
    long trick, treat;
    readf("%d %d\n", trick, treat);

    long N = trick | treat;
    long res = 1;
    foreach (i; 2 .. N+1) {
        res *= i;
    }

    res.writeln;
}