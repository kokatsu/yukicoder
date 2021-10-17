import std;

void main() {
    int D;
    readf("%d\n", D);

    auto a = readln.chomp.split.to!(int[]);

    foreach_reverse (i; 3 .. D+1) {
        a[i-2] += a[i];
        a[i] = 0;
    }

    int[] b;
    foreach_reverse (i; 0 .. min(D+1, 3)) {
        if (b.empty && a[i] == 0) {
            continue;
        }
        b ~= a[i];
    }

    if (b.empty) {
        writeln(0);
        writeln(0);
    }
    else {
        auto len = b.length;
        writeln(len-1);
        foreach_reverse (i, c; b) {
            if (i == 0) {
                writeln(c);
            }
            else {
                write(c, " ");
            }
        }
    }
}