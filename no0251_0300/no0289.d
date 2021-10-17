import std;

void main() {
    string S = readln.chomp;

    int res;
    foreach (s; S) {
        if (s.isNumber) {
            res += s - '0';
        }
    }

    res.writeln;
}