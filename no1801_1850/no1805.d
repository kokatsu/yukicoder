import std;

void main() {
    int N, M, S, G;
    readf("%d %d\n%d %d\n", N, M, S, G);

    --S, --G;

    auto toList = new int[][](N);
    foreach (_; 0 .. M) {
        int F, T;
        readf("%d %d\n", F, T);

        --F, --T;
        toList[F] ~= T, toList[T] ~= F;
    }

    int U;
    readf("%d\n", U);

    auto I = readln.chomp.split.to!(int[]);

    auto closed = new bool[](N);
    foreach (i; I) closed[i-1] = true;

    auto visited = new bool[](N);

    void f(int x) {
        visited[x] = true;
        foreach (t; toList[x]) {
            if (closed[t] || visited[t]) continue;
            f(t);
        }
    }

    f(S);

    writeln(visited[G] ? "Yes" : "No");
}