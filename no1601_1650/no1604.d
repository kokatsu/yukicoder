import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(int[]);

    auto ft = new FenwickTree!int(N);
    int res;
    foreach (i, p; P) {
        res += i - ft.sum(p);
        ft.add(p, 1);
    }

    res.writeln;
}

struct FenwickTree(T)
if (isIntegral!T) {

    /// Constructor
    this(U)(U n)
    if (isIntegral!U) {
        size = n.to!T + 1;
        data.length = size;
    }

    /// Adds val to data[idx].
    void add(U)(U idx, T val)
    if (isIntegral!U)
    in (0 < idx && idx < size) {
        U i = idx;
        while (i < size) {
            data[i] += val;
            i += i & -i;
        }
    }

    /// Returns sum(data[1], ..., data[idx]).
    T sum(U)(U idx)
    if (isIntegral!U)
    in (0 <= idx && idx < size) {
        if (idx == 0) {
            return 0;
        }

        T res;
        U i = idx;
        while (i > 0) {
            res += data[i];
            i -= i & -i;
        }
        return res;
    }

    /// Returns the smallest pos that satisfies sum(_tree[1], ..., _tree[pos]) >= x.
    U lowerBound(U = T)(T x) {
        import core.bitop : bsr;

        if (x <= 0) {
            return 0;
        }

        U pos, i = 1 << size.bsr;
        while (i > 0) {
            U t = pos + i;
            if (t < size && data[t] < x) {
                pos = t;
                x -= data[t];
            }
            i >>= 1;
        }
        ++pos;

        return pos;
    }

private:
    T size;
    T[] data;
}