import std;

void main() {
    string N;
    readf("%s\n", N);

    string res = (N[0] == '-' || N.length <= 2 ? "0" : N[0..$-2]);
    res.writeln;
}