import std;

struct Square {
    long y, x, a;
}

void main() {
    long H, W, Y, X;
    readf("%d %d %d %d\n", H, W, Y, X);

    auto A = new long[][](H);
    foreach (i; 0 .. H) A[i] = readln.chomp.split.to!(long[]);

    --Y, --X;

    long[] dy = [-1, 0, 1, 0], dx = [0, 1, 0, -1];

    auto seen = new bool[][](H, W);
    seen[Y][X] = true;

    long S = A[Y][X];

    auto heap = new BinaryHeap!(Array!Square, "a.a > b.a")();
    foreach (i; 0 .. 4) {
        long ny = Y + dy[i], nx = X + dx[i];
        if (0 <= ny && ny < H && 0 <= nx && nx < W) {
            heap.insert(Square(ny, nx, A[ny][nx]));
            seen[ny][nx] = true;
        }
    }

    while (!heap.empty) {
        auto f = heap.front;

        if (S <= f.a) break;

        heap.popFront;
        S += f.a;

        foreach (i; 0 .. 4) {
            long ny = f.y + dy[i], nx = f.x + dx[i];
            if (0 <= ny && ny < H && 0 <= nx && nx < W && !seen[ny][nx]) {
                heap.insert(Square(ny, nx, A[ny][nx]));
                seen[ny][nx] = true;
            }
        }
    }

    writeln(heap.empty ? "Yes" : "No");
}