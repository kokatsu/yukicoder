import std;

void main() {
    int h, w, sx, sy, gx, gy;
    readf("%d %d\n%d %d %d %d\n", h, w, sx, sy, gx, gy);

    auto b = new string[](h);
    foreach (i; 0 .. h) readf("%s\n", b[i]);

    --sx, --sy, --gx, --gy;

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    auto reach = new bool[][](h, w);
    reach[sx][sy] = true;

    void f(int x, int y) {
        foreach (i; 0 .. 4) {
            int x1 = x + dx[i], y1 = y + dy[i];
            if (0 <= x1 && x1 < h && 0 <= y1 && y1 < w
                && abs(b[x][y]-b[x1][y1]) <= 1 && !reach[x1][y1]) {
                reach[x1][y1] = true;
                f(x1, y1);
            }

            int x2 = x + dx[i] * 2, y2 = y + dy[i] * 2;
            if (0 <= x2 && x2 < h && 0 <= y2 && y2 < w
                && b[x][y] == b[x2][y2] && b[x][y] > b[x1][y1] && !reach[x2][y2]) {
                reach[x2][y2] = true;
                f(x2, y2);
            }
        }
    }

    f(sx, sy);

    writeln(reach[gx][gy] ? "YES" : "NO");
}