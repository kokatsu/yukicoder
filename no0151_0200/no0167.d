import std;

void main() {
    auto N = readln.chomp;
    auto M = readln.chomp;

    if (M == "0") {
        1.writeln;
        return;
    }

    int d = N[$-1] - '0';
    if (d.among(0, 1, 5, 6)) {
        d.writeln;
        return;
    }

    int p = M[$-1] - '0';
    if (M.length > 1) {
        p += (M[$-2] - '0') * 10;
    }
    p += 4;

    int res = d;
    foreach (i; 2 .. p+1) {
        res = (res * d) % 10;
    }
    res.writeln;
}