import std;

void main() {
    int L = 100;
    int[] p = [0, L], q = [0, 0];

    auto d = new int[](2);
    foreach (i; 0 .. 2) {
        writefln("? %d %d", p[i], q[i]);
        stdout.flush;

        readf("%d\n", d[i]);
    }

    int r = (L * L + d[0] - d[1]) / (L * 2);
    int s = to!real(d[0]-r*r).sqrt.floor.to!int;

    writefln("! %d %d", r, s);
}