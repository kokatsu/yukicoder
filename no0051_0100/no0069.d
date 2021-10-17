import std;

void main() {
    auto A = readln.chomp.to!(dchar[]);
    auto B = readln.chomp.to!(dchar[]);

    A.sort;
    B.sort;

    if (A == B) {
        writeln("YES");
    }
    else {
        writeln("NO");
    }
}