import std;

void main() {
    int D;
    readf("%d\n", D);

    D /= 2;

    int res;
    foreach (i; 1 .. D) {
        int j = D - i;
        res = max(res, i*j);
    }

    res.writeln;
}