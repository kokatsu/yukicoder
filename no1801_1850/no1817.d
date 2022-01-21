import std;

void main() {
    int N;
    readf("%d\n", N);

    auto list = new int[][](N);
    foreach (_; 0 .. N-1) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        list[A] ~= B, list[B] ~= A;
    }

    auto degs = new int[](N);

    int f(int now, int pre = -1) {
        int res;

        foreach (l; list[now]) {
            if (l == pre) continue;

            degs[l] = degs[now];
            if (l > now) ++degs[l];
            else --degs[l], ++res;

            res += f(l, now);
        }

        return res;
    }

    int s = f(0);
    foreach (d; degs) {
        writeln(s+d);
    }
}