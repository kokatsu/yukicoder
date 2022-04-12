import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);
    auto b = readln.chomp.split.to!(long[]);

    long[long] list;
    foreach (p; a.permutations) {
        long point;
        foreach (x, y; zip(p, b)) {
            point += max(0, x-y);
        }
        ++list[point];
    }

    long mkey = list.byKey.maxElement;

    long res = list[mkey];
    res.writeln;
}