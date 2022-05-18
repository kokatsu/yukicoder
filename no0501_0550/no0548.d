import std;

void main() {
    auto S = readln.chomp;

    int L = 13;

    auto cnts = new int[](3);
    auto list = new int[](L);
    foreach (s; S) {
        ++list[s-'a'];

        if (list[s-'a'] == 1) ++cnts[0];
        else if (list[s-'a'] == 2) --cnts[0], ++cnts[1];
        else ++cnts[2];
    }

    if (cnts[2] > 0 || cnts[1] > 1) {
        writeln("Impossible");
        return;
    }

    foreach (i; 0 .. L) {
        if (cnts[1] == 0 && list[i] == 1) to!dchar(i+'a').writeln;
        if (cnts[1] == 1 && list[i] == 0) to!dchar(i+'a').writeln;
    }
}