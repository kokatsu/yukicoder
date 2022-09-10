import std;

void main() {
    int K, S;
    readf("%d\n%d\n", K, S);

    int res = 100 * S / (100 - K);
    res.writeln;
}