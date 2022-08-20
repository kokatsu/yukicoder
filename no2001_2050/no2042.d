import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto res = 'R'.repeat(N).array;
    foreach (_; 0 .. K) {
        int A;
        char c;
        readf("%d %c\n", A, c);

        res[A-1] = c;
    }

    string color = "RGB";

    foreach (i, ref r; res) {
        if (i % 3 == 1) {
            if (res[i-1] == r) r = (r == 'R' ? 'G' : 'R');
        }
        else if (i % 3 == 2) {
            ulong pos;
            foreach (j, c; color) {
                if (c == res[i-2]) continue;
                if (c == res[i-1]) continue;

                pos = j;
            }

            r = color[pos];
        }
    }

    res.writeln;
}