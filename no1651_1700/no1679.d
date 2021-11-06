import std;

void main() {
    int N;
    readf("%d\n", N);

    int[int] red;
    int[] blue;
    foreach (i; 0 .. N) {
        int A, B, T;
        readf("%d %d %d\n", A, B, T);

        if (A == 0) {
            ++red[B-T];
        }
        else {
            blue ~= B - T;
        }
    }

    ulong res;
    foreach (b; blue) {
        if (!(b in red)) {
            continue;
        }

        res += red[b];
    }

    res.writeln;
}