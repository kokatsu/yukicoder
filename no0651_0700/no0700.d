import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    string love = "LOVE";
    bool isOK;
    foreach (_; 0 .. n) {
        auto s = readln.chomp;
        isOK |= s.canFind(love);
    }

    writeln(isOK ? "YES" : "NO");
}