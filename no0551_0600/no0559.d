import std;

void main() {
    auto S = readln.chomp;

    long res, cnt;
    foreach (i, s; S) {
        if (s == 'A') res += i - cnt++;
    }

    res.writeln;
}