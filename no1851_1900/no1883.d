import std;

void main() {
    auto abc = readln.chomp.to!(dchar[]);

    abc.sort;

    int res = (abc.back - '0') - (abc.front - '0');
    res.writeln;
}