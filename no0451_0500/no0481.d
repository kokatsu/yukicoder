import std;

void main() {
    auto B = readln.chomp.split.to!(int[]);

    writeln(55 - B.sum);
}