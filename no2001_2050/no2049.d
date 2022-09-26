import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    string res = S[1..N-1];
    res.writeln;
}