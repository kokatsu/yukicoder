import std;

void main() {
    auto S = readln.chomp;

    int L, R, pos;
    while (S[pos] != '#') {
        ++(S[pos+1] == '*' ? R : L);
        pos += 5;
    }

    writeln(L, " ", R);
}