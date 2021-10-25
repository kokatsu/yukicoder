import std;

struct Grid {
    long x;
    long y;
    long cost;
}

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    long U, D, R, L, K, P;
    readf("%d %d %d %d %d %d\n", U, D, R, L, K, P);

    long xs, ys, xt, yt;
    readf("%d %d %d %d\n", xs, ys, xt, yt);
    --xs, --ys, --xt, --yt;

    auto C = new string[](H);
    foreach (i; 0 .. H) {
        C[i] = readln.chomp;
    }

    auto costs = new long[][](H, W);
    foreach (i; 0 .. H) {
        costs[i][] = long.max;
    }
    costs[xs][ys] = 0;

    auto move = [
        Grid(-1, 0, U),
        Grid(1, 0, D),
        Grid(0, 1, R),
        Grid(0, -1, L)
    ];

    auto que = new BinaryHeap!(Array!Grid, "a.cost > b.cost")();
    que.insert(Grid(xs, ys, 0));

    while (!que.empty) {
        auto f = que.front;
        que.popFront;

        if (costs[f.x][f.y] < f.cost) {
            continue;
        }

        foreach (m; move) {
            auto next = f;
            next.x += m.x, next.y += m.y, next.cost += m.cost;

            if (next.x < 0 || next.x >= H || next.y < 0 || next.y >= W) {
                continue;
            }

            if (C[next.x][next.y] == '#') {
                continue;
            }
            else if (C[next.x][next.y] == '@') {
                next.cost += P;
            }

            if (costs[next.x][next.y] > next.cost) {
                costs[next.x][next.y] = next.cost;
                que.insert(next);
            }
        }
    }

    if (costs[xt][yt] <= K) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}