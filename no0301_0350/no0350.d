import std;

void main() {
    auto input = readln.chomp.split;

    long v;
    foreach (x; input[0][2..$]) {
        v *= 10;
        v += x - '0';
    }

    long s = input[1].to!long;

    long res = v * s / (10 ^^ 4);
    res.writeln;
}