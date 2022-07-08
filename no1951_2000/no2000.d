import std;

void main() {
    auto S = readln.chomp;

    int L = 26;
    auto D = new int[][](L);
    foreach (i; 0 .. L) D[i] = readln.chomp.split.to!(int[]);

    auto pos = new int[][](L);
    foreach (i, s; S) {
        pos[s-'a'] ~= i.to!int;
    }

    auto spos = new SortedRange!(int[], "a < b")[](L);
    foreach (i; 0 .. L) {
        spos[i] = pos[i].assumeSorted;
    }

    auto res = new dchar[][](L, L);
    foreach (i; 0 .. L) res[i][] = 'Y';

    foreach (i, s; S) {
        int t = s - 'a';

        foreach (j; 0 .. L) {
            int num = i.to!int + D[t][j];
            auto ub = spos[j].lowerBound(num);
            if (ub.empty) continue;
            if (ub.back <= i) continue;

            res[t][j] = 'N';
        }
    }

    foreach (i; 0 .. L) writefln("%(%c %)", res[i]);
}