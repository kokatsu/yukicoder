import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](N, N);

    int x, y, num, dir;
    while (num < N * N) {
        A[x][y] = ++num;

        if (dir == 0 && (y >= N - 1 || A[x][y+1] > 0)) dir = 1;
        else if (dir == 1 && (x >= N - 1 || A[x+1][y] > 0)) dir = 2;
        else if (dir == 2 && (y <= 0 || A[x][y-1] > 0)) dir = 3;
        else if (dir == 3 && (x <= 0 || A[x-1][y] > 0)) dir = 0;

        int d = dir < 2 ? 1 : -1;
        (dir & 1 ? x : y) += d;
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            format("%03d", A[i][j]).write;
            write(j == N - 1 ? "\n" : " ");
        }
    }
}