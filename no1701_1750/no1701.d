import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto a = readln.chomp.split.to!(long[]);

    void dfs(long num, long cnt, long bit, ref bool flag) {
        if (cnt == N) {
            if (num == W) {
                flag = true;
            }
        }
        else {
            if (bit & 1) {
                dfs(num+a[cnt], cnt+1, bit>>1, flag);
                dfs(num+a[cnt]/2, cnt+1, bit>>1, flag);
            }
            else {
                dfs(num, cnt+1, bit>>1, flag);
            }
        }
    }

    long res;
    foreach (i; 1 .. 1<<N) {
        long b = i;
        bool canChoose;
        dfs(0, 0, b, canChoose);

        if (canChoose) {
            ++res;
        }
    }

    res.writeln;
}