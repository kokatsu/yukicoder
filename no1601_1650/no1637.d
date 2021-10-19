import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto tree = new int[][](N+1);
    foreach (i; 0 .. N-1) {
        int a, b;
        readf("%d %d\n", a, b);

        tree[a] ~= b;
        tree[b] ~= a;
    }

    auto seen = new bool[](N+1);
    auto part = new long[](N+1);
    void dfs(int root) {
        seen[root] = true;
        ++part[root];
        
        foreach (t; tree[root]) {
            if (seen[t]) {
                continue;
            }

            dfs(t);

            part[root] += part[t];
        }
    }

    dfs(1);

    long S;
    foreach (i; 0 .. Q) {
        long p, x;
        readf("%d %d\n", p, x);

        S += part[p] * x;

        S.writeln;
    }
}