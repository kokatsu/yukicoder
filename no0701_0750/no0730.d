import std;

void main() {
    auto S = readln.chomp;

    bool isOK = true;
    auto used = new bool[](26);
    foreach (s; S) {
        if (used[s-'A']) isOK = false;

        used[s-'A'] = true;
    }

    writeln(isOK ? "YES" : "NO");
}