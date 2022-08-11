import std;

void main() {
    auto S = readln.chomp;

    string T = "yukicoder";

    foreach (s, t; zip(S, T)) {
        if (s == t) continue;

        t.writeln;
    }
}