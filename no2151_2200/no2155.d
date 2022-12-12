import std;

enum long X = 10 ^^ 3 + 1;

void main() {
    int N, M, L;
    readf("%d %d %d\n", N, M, L);

    auto A = readln.chomp.split.to!(long[]);

    auto colors = new bool[](X);
    colors[L] = true;
    foreach (a; A) {
        auto next = colors.dup;

        foreach (i, color; colors) {
            if (!color) continue;

            next[(i+a)/2] = true;
        }

        colors = next;
    }

    writeln(colors[M] ? "Yes" : "No");
}