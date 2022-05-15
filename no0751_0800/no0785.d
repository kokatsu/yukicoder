import std;

void main() {
    auto RGB = new long[](3);
    RGB[] = 16;

    foreach (i; 0 .. 3) {
        auto input = readln.chomp.split(',');
        if (input[0] == "NONE") continue;
        RGB[i] -= input.length;
    }

    long res = (RGB.fold!"a * b") ^^ 2;
    res.writeln;
}