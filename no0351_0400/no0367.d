import std;

enum int[] kx = [-2, -1, 1, 2, 2, 1, -1, -2];
enum int[] ky = [1, 2, 2, 1, -1, -2, -2, -1];

enum int[] bx = [-1, 1, 1, -1];
enum int[] by = [1, 1, -1, -1];

struct Piece {
    int x, y, b;
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    Piece[] que;
    int gx, gy;

    auto dists = new int[][][](H, W, 2);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            dists[i][j][] = int.max;
        }
    }

    auto s = new string[](H);
    foreach (i; 0 .. H) {
        readf("%s\n", s[i]);

        foreach (j; 0 .. W) {
            if (s[i][j] == 'S') que ~= Piece(i, j, 0), dists[i][j][0] = 0;
            if (s[i][j] == 'G') gx = i, gy = j;
        }
    }

    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        int[] dx = (f.b == 0 ? kx : bx);
        int[] dy = (f.b == 0 ? ky : by);

        foreach (u, v; zip(dx, dy)) {
            Piece g = f;
            g.x += u, g.y += v;
            if (g.x < 0 || H <= g.x || g.y < 0 || W <= g.y) continue;

            if (s[g.x][g.y] == 'R') g.b = (g.b + 1) % 2;

            if (dists[g.x][g.y][g.b] > dists[f.x][f.y][f.b] + 1) {
                dists[g.x][g.y][g.b] = dists[f.x][f.y][f.b] + 1;
                que ~= g;
            }
        }
    }

    int res = dists[gx][gy].minElement;
    if (res == int.max) res = -1;

    res.writeln;
}