import std;

void main() {
    int N;
    readf("%d\n", N);

    auto W = readln.chomp.split.to!(int[]);

    int M = W.sum;
    if (M % 2 == 1) {
        writeln("impossible");
    }
    else {
        auto list = new bool[M+1];
        list[0] = true;
        foreach (w; W) {
            foreach_reverse (i; 0 .. M+1) {
                if (list[i] && i + w <= M) {
                    list[i+w] = true;
                }
            }
        }
        if (list[M/2]) {
            writeln("possible");
        }
        else {
            writeln("impossible");
        }
    }
}