import std;

void main() {
    int n;
    readf("%d\n", n);

    string S = "a".replicate(18);
    foreach (_; 0 .. n-1) {
        string T = "a" ~ S ~ "a";
        T.writeln;

        S = S.succ;
    }

    writeln("a", S, "n");
}