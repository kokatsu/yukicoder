import std;

void main() {
    int L, N;
    readf("%d\n%d\n", L, N);

    auto W = readln.chomp.split.to!(int[]);
    W.sort;

    int width;
    int res;
    foreach (w; W) {
        if (width + w > L) {
            break;
        }
        width += w;
        ++res;
    }

    res.writeln;
}