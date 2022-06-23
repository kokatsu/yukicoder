import std;

void main() {
    auto C = readln.chomp;

    auto res = C.length.to!int - 1;
    res -= C.count('0');

    res.writeln;
}