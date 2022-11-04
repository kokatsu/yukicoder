import std;

void main() {
    int n, m;
    readf("%d %d\n", n, m);

    int[][] rs = new int[][](n, n);
    foreach (i; 0 .. n) {
        rs[i][] = int.max / 2;
        rs[i][i] = 0;
    }

    foreach (_; 0 .. m) {
        int a, b;
        readf("%d %d\n", a, b);

        --a, --b;
        rs[a][b] = rs[b][a] = 1;
    }

    foreach (i; 0 .. n) {
        foreach (j; 0 .. n) {
            foreach (k; 0 .. n) {
                rs[j][k] = min(rs[j][k], rs[j][i]+rs[i][k]);
            }
        }
    }

    int res;
    foreach (i; 0 .. n-2) {
        foreach (j; i+1 .. n-1) {
            foreach (k; j+1 .. n) {
                if (rs[i][j] == 2 || rs[j][k] == 2 || rs[k][i] == 2) continue;

                ++res;
            }
        }
    }

    res.writeln;
}