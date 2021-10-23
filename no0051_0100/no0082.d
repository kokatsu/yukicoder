import std;

void main() {
    auto input = readln.chomp.split;

    int W = input[0].to!int, H = input[1].to!int;
    dchar C = input[2].to!dchar;

    dchar[] pattern = new dchar[](2);
    pattern[0] = C;
    if (C == 'B') {
        pattern[1] = 'W';
    }
    else {
        pattern[1] = 'B';
    }

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (j == W - 1) {
                pattern[(i+j)%2].writeln;
            }
            else {
                pattern[(i+j)%2].write;
            }
        }
    }
}