import std;

void main() {
    auto N = readln.chomp.to!(dchar[]);

    N.sort!"a > b";

    N.writeln;
}