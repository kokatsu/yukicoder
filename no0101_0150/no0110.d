import std;

void main() {
    int Nw;
    readf("%d\n", Nw);

    auto W = readln.chomp.split.to!(int[]);

    int Nb;
    readf("%d\n", Nb);

    auto B = readln.chomp.split.to!(int[]);

    auto sorted = new SortedRange!(int[], "a < b")[](2);
    sorted[0] = W.sort;
    sorted[1] = B.sort;

    int res;
    foreach (i; 0 .. 2) {
        int cnt, idx = i, len = 100;
        while (true) {
            auto lb = sorted[idx].lowerBound(len);
            if (lb.empty) break;

            ++cnt, idx = (idx + 1) % 2, len = lb.back;
        }

        res = max(res, cnt);
    }

    res.writeln;
}