import std;

void main() {
    auto S = readln.chomp;

    int cnt;
    dchar pre;
    string res = "NA";
    foreach (s; S) {
        if (s == pre) ++cnt;
        else cnt = 1;

        if (cnt >= 3) {
            res = (s == 'O' ? "East" : "West");
            break;
        }

        pre = s;
    }

    res.writeln;
}