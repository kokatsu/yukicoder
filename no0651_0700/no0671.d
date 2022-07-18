import std;

void main() {
    auto N = readln.chomp;

    string M = "1000000007";

    int a = N.count('0').to!int, b = M.count('0').to!int;

    int res = abs(a-b);
    res.writeln;
}