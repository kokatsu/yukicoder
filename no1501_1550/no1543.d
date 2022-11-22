import std;

void main() {
    int S, T;
    dchar c;
    readf("%d %d %c\n", S, T, c);

    bool isOK;
    if (c == '<') isOK = (S < T);
    if (c == '>') isOK = (S > T);
    if (c == '=') isOK = (S == T);

    writeln(isOK ? "YES" : "NO");
}