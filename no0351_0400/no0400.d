import std;

void main() {
    string S;
    readf("%s\n", S);

    auto res = S.map!(a => a == '>' ? '<' : '>').array;
    res.reverse;

    res.writeln;
}