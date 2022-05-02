import std;

void main() {
    foreach (i; 0 .. 1000) {
        writefln("%03d", i);
        stdout.flush;

        auto S = readln.chomp;
        if (S == "unlocked") break;
    }
}