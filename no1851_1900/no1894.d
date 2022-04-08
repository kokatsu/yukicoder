import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        readf("%d\n", N);

        auto S = readln.chomp;

        dchar[] res;
        int cntB;
        foreach_reverse (s; S) {
            if (s == 'A') {
                if (cntB > 1) {
                    --cntB;
                }
                else {
                    while (cntB > 0) {
                        res ~= 'B';
                        --cntB;
                    }
                    res ~= 'A';
                }
            }
            else {
                ++cntB;
            }
        }

        while (cntB > 0) {
            res ~= 'B';
            --cntB;
        }

        res.reverse;

        res.writeln;
    }
}