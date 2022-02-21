import std;

void main() {
    string S = readln.chomp;

    dchar a = 'a';
    int cnt;
    foreach (s; S) {
        if (s == a) ++cnt;
    }

    a.repeat(cnt+1).writeln;
}