import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    bool f(int[] x) {
        bool res = true;
        foreach (i; 0 .. 3) {
            res &= (x[i] != x[(i+1)%3]);
        }
        int mn = x.minElement, mx = x.maxElement;
        res &= (x[1] == mn || x[1] == mx);
        return res;
    }

    if (f(A)) {
        writeln("INF");
        return;
    }

    int res, L = A.maxElement;
    foreach (i; 1 .. L+1) {
        auto B = A.dup;
        B[] %= i;
        if (f(B)) ++res;
    }

    res.writeln;
}