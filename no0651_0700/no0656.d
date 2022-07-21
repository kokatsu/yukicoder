import std;

void main() {
    auto S = readln.chomp;

    int res;
    foreach (s; S) {
        int d = s - '0';
        res += (d == 0 ? 10 : d);
    }

    res.writeln;
}