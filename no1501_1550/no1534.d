import std;

void main() {
    string S = readln.chomp;

    auto r = regex([r"pon|pain"]);
    auto T = S.splitter!(Yes.keepSeparators)(r);

    bool isOK = true;
    string a = "pon", b = "pain";
    int res, num = -1;
    foreach (t; T) {
        if (t == a) ++num;
        else if (t == b && isOK) {
            res = max(res, num);
            isOK = false;
        }
    }

    if (res == 0) res = -1;

    res.writeln;
}