import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto res = S.uniq.array;
    res.writeln;
}