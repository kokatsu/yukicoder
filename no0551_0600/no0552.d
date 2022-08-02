import std;

void main() {
    auto N = readln.chomp;

    string res = N;
    if (res != "0") res ~= "0";

    res.writeln;
}