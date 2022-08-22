import std;

void main() {
    string S1;
    int T;
    readf("%s %d\n", S1, T);

    string[] list = ["I", "II", "III", "IIII", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII"];

    ulong num;
    foreach (i, l; list) {
        if (l == S1) num = i + 1;
    }

    num += 1200 + T;

    string res = list[(num-1)%12];
    res.writeln;
}