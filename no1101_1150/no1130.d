import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int pos;
    auto nums = new int[](H*W);
    foreach (_; 0 .. H) {
        auto A = readln.chomp.split.to!(int[]);
        foreach (a; A) nums[pos++] = a;
    }

    nums.sort;

    auto res = new int[][](H, W);
    foreach (i, num; nums) res[i/W][i%W] = num;

    foreach (r; res) writefln("%(%s %)", r);
}