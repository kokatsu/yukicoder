import std;

void main() {
    int R, K, H, W;
    readf("%d %d\n%d %d\n", R, K, H, W);

    auto c = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", c[i]);

    int X = H * K, Y = W * K;
    auto res = new dchar[][](X, Y);
    foreach (i; 0 .. X) {
        foreach (j; 0 .. Y) {
            res[i][j] = c[i/K][j/K];
        }
    }

    foreach (_; 0 .. R/90) {
        res = rotate(res);
    }

    writefln("%(%-(%s%)\n%)", res);
}

T[][] rotate(T)(T[][] mat) {
    auto r = mat.length, c = mat[0].length;
    auto ret = new T[][](c, r);
    foreach (i; 0 .. r) {
        foreach (j; 0 .. c) {
            ret[j][r-i-1] = mat[i][j];
        }
    }
    return ret;
}