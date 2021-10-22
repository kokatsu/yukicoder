import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int ni, nj;
    readf("%d %d\n", ni, nj);

    int zi, zj;
    readf("%d %d\n", zi, zj);

    int x = abs(ni-zi), y = abs(nj-zj);
    if ((x + y) % 2 == 1) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}