import std;

enum int L = 2000;

struct Snowball {
    int x, y, size;
}

void main() {
    int H, W, A, Si, Sj, B, Gi, Gj;
    readf("%d %d\n%d %d %d\n%d %d %d\n", H, W, A, Si, Sj, B, Gi, Gj);

    auto M = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", M[i]);

    int[] dx = [-1, 0, 1, 0], dy = [0, 1, 0, -1];

    auto seen = new bool[][][](H, W, L);
    seen[Si][Sj][A] = true;

    Snowball[] que;
    que ~= Snowball(Si, Sj, A);
    while (!que.empty) {
        if (seen[Gi][Gj][B]) break;

        auto f = que.front;
        que.popFront;

        static foreach (i; 0 .. 4) {{
            int nx = f.x + dx[i], ny = f.y + dy[i];
            if (0 <= nx && nx < H && 0 <= ny && ny < W) {
                int s = f.size + (M[nx][ny] == '*' ? 1 : -1);
                if (0 < s && s < L && !seen[nx][ny][s]) {
                    seen[nx][ny][s] = true;
                    que ~= Snowball(nx, ny, s);
                }
            }
        }}
    }

    writeln(seen[Gi][Gj][B] ? "Yes" : "No");
}