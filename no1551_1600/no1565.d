import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto edges = new int[][](N+1);
    foreach (_; 0 .. M) {
        int a, b;
        readf("%d %d\n", a, b);

        edges[a] ~= b, edges[b] ~= a;
    }

    auto dists = new int[](N+1);
    dists[] = int.max / 2;
    dists[1] = 0;

    int[] v = [1];
    while (!v.empty) {
        auto f = v.front;
        v.popFront;

        foreach (e; edges[f]) {
            if (dists[e] > dists[f] + 1) {
                dists[e] = dists[f] + 1;
                v ~= e;
            }
        }
    }

    if (dists[N] == int.max / 2) dists[N] = -1;

    int res = dists[N];
    res.writeln;
}