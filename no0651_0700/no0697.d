import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new bool[][](H, W);
    foreach (i; 0 .. H) {
        auto tmp = readln.chomp.split.to!(int[]);
        foreach (j; 0 .. W) {
            if (tmp[j] == 0) {
                continue;
            }

            A[i][j] = true;
        }
    }

    int size = H * W;
    auto uf = UnionFind!int(size);

    auto deltaX = [-1, 0, 1, 0], deltaY = [0, 1, 0, -1];

    foreach (x; 0 .. H) {
        foreach (y; 0 .. W) {
            if (A[x][y] == 0) {
                continue;
            }

            foreach (dx, dy; zip(deltaX, deltaY)) {
                int nx = x + dx, ny = y + dy;

                if (nx < 0 || nx >= H || ny < 0 || ny >= W) {
                    continue;
                }

                if (!A[nx][ny]) {
                    continue;
                }

                uf.unite(x*W+y, nx*W+ny);
            }
        }
    }

    int res;
    foreach (x; 0 .. H) {
        foreach (y; 0 .. W) {
            if (!A[x][y]) {
                continue;
            }

            int num = x * W + y;
            if (uf.root(num) == num) {
                ++res;
            }
        }
    }

    res.writeln;
}

/// Union-Find
struct UnionFind(T) {

    /// Constructor
    this(T n) {
        par.length = n;
        cnt.length = n;
        foreach (i; 0 .. n) {
            par[i] = i;
        }
        cnt[] = 1;
    }

    /// Return the root of x.
    T root(T x) {
        if (par[x] == x) {
            return x;
        }
        else {
            return par[x] = root(par[x]);
        }
    }

    /// Return whether x and y have the same root.
    bool same(T x, T y) {
        return root(x) == root(y);
    }

    /// Unite the components of x and y.
    void unite(T x, T y) {
        x = root(x), y = root(y);
        if (x == y) {
            return;
        }

        if (cnt[x] > cnt[y]) {
            swap(x, y);
        }

        cnt[y] += cnt[x];
        par[x] = y;
    }

    /// Return the size of the tree to which x belongs.
    T size(T x) {
        return cnt[root(x)];
    }

private:
    T[] par;
    T[] cnt;
}