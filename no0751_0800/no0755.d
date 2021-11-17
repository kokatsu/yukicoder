import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new long[][](M+1, M+1);
    foreach (i; 0 .. M) {
        auto input = readln.chomp.split.to!(long[]);
        A[i+1][1..M+1] = input;
    }

    foreach (i; 0 .. M) {
        A[i+1][] += A[i][];
    }

    foreach (i; 1 .. M+1) {
        foreach (j; 0 .. M) {
            A[i][j+1] += A[i][j];
        }
    }

    foreach (i; 0 .. N) {
        int x, y;
        readf("%d %d\n", x, y);

        long res;
        foreach (xs; 1 .. x+1) {
            foreach (xt; x .. M+1) {
                foreach (ys; 1 .. y+1) {
                    foreach (yt; y .. M+1) {
                        if (A[xt][yt] - A[xs-1][yt] - A[xt][ys-1] + A[xs-1][ys-1] == 0) {
                            ++res;
                        }
                    }
                }
            }
        }

        res.writeln;
    }
}