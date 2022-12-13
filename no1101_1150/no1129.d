import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    string res = "Draw";
    if (A != C) {
        res = (A > C ? "null" : "tRue");
    }
    else if (B != D) {
        res = ((3 + B - D) % 3 == 2 ? "null" : "tRue");
    }

    res.writeln;
}