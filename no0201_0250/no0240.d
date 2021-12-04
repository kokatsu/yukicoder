import std;

void main() {
    long X, Y;
    readf("%d %d\n", X, Y);

    bool isOK;

    void dfs(long x, long y, long cnt) {
        if (x == X && y == Y) {
            isOK = true;
        }
        else if (cnt < 3) {
            dfs(x-2, y-1, cnt+1);
            dfs(x-2, y+1, cnt+1);
            dfs(x-1, y-2, cnt+1);
            dfs(x-1, y+2, cnt+1);
            dfs(x+1, y-2, cnt+1);
            dfs(x+1, y+2, cnt+1);
            dfs(x+2, y-1, cnt+1);
            dfs(x+2, y+1, cnt+1);
        }
    }

    dfs(0, 0, 0);

    writeln(isOK ? "YES" : "NO");
}