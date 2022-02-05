import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int lim = A.maxElement * 2 + 1;

    auto list = new bool[](lim);
    list[0] = true;
    foreach (a; A) {
        auto tmp = list.dup;
        foreach (i; 0 .. lim) {
            if (!list[i]) {
                continue;
            }

            tmp[a^i] = true;
        }
        list = tmp;
    }

    list.count(true).writeln;
}