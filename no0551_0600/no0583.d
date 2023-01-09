import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto uf = new UnionFind!int(N);
    auto cnts = new int[](N);
    foreach (_; 0 .. M) {
        int S, T;
        readf("%d %d\n", S, T);

        uf.unite(S, T);
        ++cnts[S], ++cnts[T];
    }

    int pos = -1, cnt1, cnt2;
    foreach (i; 0 .. N) {
        if (cnts[i] == 0) continue;

        if (uf.root(i) == i) pos = i, ++cnt1;
        if (cnts[i] % 2 == 1) ++cnt2;
    }

    writeln(cnt1 == 1 && cnt2 <= 2 ? "YES" : "NO");
}

/// Union-Find
struct UnionFind(T)
if (isIntegral!T) {

    /// Constructor
    this(T n) nothrow @safe {
        len = n;
        par.length = len;
        cnt.length = len;
        foreach (i; 0 .. len) {
            par[i] = i;
        }
        cnt[] = 1;
    }

    /// Returns the root of x.
    T root(T x) nothrow @nogc @safe
    in (0 <= x && x < len) {
        if (par[x] == x) {
            return x;
        }
        else {
            return par[x] = root(par[x]);
        }
    }

    /// Returns whether x and y have the same root.
    bool isSame(T x, T y) nothrow @nogc @safe
    in (0 <= x && x < len && 0 <= y && y < len) {
        return root(x) == root(y);
    }

    /// Unites x tree and y tree.
    void unite(T x, T y) nothrow @nogc @safe
    in (0 <= x && x < len && 0 <= y && y < len) {
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

    /// Returns the size of the x tree.
    T size(T x) nothrow @nogc @safe
    in (0 <= x && x < len) {
        return cnt[root(x)];
    }

private:
    T len;
    T[] par;
    T[] cnt;
}