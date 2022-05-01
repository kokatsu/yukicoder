import std;

void main() {
    auto S = readln.chomp.to!dstring;

    int res, num;
    foreach (s; S) {
        if (s == '…') ++num;
        else num = 0;

        res = max(res, num);
    }

    res.writeln;
}