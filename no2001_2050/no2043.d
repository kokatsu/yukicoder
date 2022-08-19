import std;

void main() {
    long A, B, S;
    readf("%d %d %d\n", A, B, S);

    auto table = new long[](B+1);
    foreach (i; 1 .. B+1) {
        table[i] = B - i + 1;
        table[i] += table[i-1];
    }

    long res;
    foreach (i; 1 .. A+1) {
        long D = min(B, S/i);
        res += (A - i + 1) * table[D];
    }

    res.writeln;
}