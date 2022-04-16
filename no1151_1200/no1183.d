import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    int res;
    bool rev;
    foreach (a, b; zip(A, B)) {
        if (a == b) {
            if (rev) {
                ++res;
                rev = false;
            }
        }
        else {
            rev = true;
        }
    }
    if (rev) ++res;

    res.writeln;
}