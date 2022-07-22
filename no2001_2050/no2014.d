import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    int res = a.minElement;
    res.writeln;
}