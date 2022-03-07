import std;

void main() {
    int N;
    readf("%d\n", N);

    int L = 1001;
    auto cnts = new int[](L);

    foreach (_; 0 .. N) {
        auto S = readln.chomp;
        ++cnts[S.length-2];
    }

    auto nums = L.iota.array;
    zip(cnts, nums).sort!"a[0] == b[0] ? a[1] > b[1] : a[0] > b[0]";

    nums[0].writeln;
}