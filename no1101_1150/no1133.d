import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    auto s = readln.chomp;

    int x, y;

    auto KimWipes = new int[][](n+1, n+1);
    foreach (i; 0 .. n+1) KimWipes[i][] = 1;
    KimWipes[0][0] = 0;

    foreach (S; s) {
        if (S == 'U') ++y;
        else if (S == 'R') ++x;
        else if (S == 'L') --x;
        else --y;

        KimWipes[y][x] = 0;
    }

    foreach_reverse (i; 0 .. n+1) {
        writefln("%(%s %)", KimWipes[i]);
    }
}