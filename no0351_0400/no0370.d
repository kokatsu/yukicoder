import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto D = new int[](M);
    foreach (i; 0 .. M) readf("%d\n", D[i]);

    D.sort;

    int res = int.max;
    foreach (i; 0 .. M-N+1) {
        if (D[i] < 0) {
            int x = D[i].abs;
            if (D[i+N-1] < 0) {
                res = min(res, x);
            }
            else {
                int mn = min(x, D[i+N-1]), mx = max(x, D[i+N-1]);
                res = min(res, mn*2+mx);
            }
        }
        else {
            res = min(res, D[i+N-1]);
        }
    }

    res.writeln;
}