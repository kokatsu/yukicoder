import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);
    auto b = readln.chomp.split.to!(int[]);

    int L = 102;
    auto scores = new int[](L);
    foreach (x, y; zip(a, b)) {
        scores[y] += x;
    }

    writeln(scores.maxIndex == 0 ? "YES" : "NO");
}