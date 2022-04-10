import std;

void main() {
    auto S = readln.chomp;

    int[dchar] list;
    foreach (s; S) ++list[s];

    foreach (key, val; list) {
        if (val != 1) continue;

        foreach (i, s; S) {
            if (s == key) {
                writeln(i+1, " ", key);
                return;
            }
        }
    }
}