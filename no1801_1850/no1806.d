import std;

void main() {
    auto A = readln.chomp.to!dchar;
    auto B = readln.chomp.to!dchar;

    string C = "NESW";
    auto D = C.cycle.take(12).to!string;
    
    long a = -1, b = -1;
    foreach (i, d; D) {
        if (a < 0 && d == A) a = i;
        if (a >= 0 && b < 0 && d == B) b = i;
    }

    long res = b - a;
    res.writeln;
}