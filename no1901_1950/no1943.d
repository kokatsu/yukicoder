import std;

void main() {
    int n;
    readf("%d\n", n);

    auto s = readln.chomp;

    auto r = "AGCT";

    int cnt;
    foreach (i, x; s) {
        if (r.canFind(x)) ++cnt;
    }

    int res, pos = cnt - 1, tmp = cnt;
    while (cnt > 0) {
        ++res;

        if (r.canFind(s[pos])) pos = --cnt - 1;
        else pos = tmp++;
    }

    res.writeln;
}