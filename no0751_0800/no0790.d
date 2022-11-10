import std;

void main() {
    int N;
    readf("%d\n", N);

    N *= 2;

    int res;
    foreach (i; 0 .. 1<<(N-1)) {
        bool isOK = true;
        int cnt;

        foreach (j; 0 .. N-1) {
            cnt += ((i >> j) & 1 ? -1 : 1);
            isOK &= (cnt >= 0);

            if (!isOK) break;
        }

        isOK &= (cnt == 1);

        if (isOK) ++res;
    }

    res.writeln;
}