import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto rbt = A.redBlackTree!true;
    foreach (i; 0 .. N-1) {
        if (i % 2 == 0) {
            long x = rbt.front;
            rbt.removeFront;

            long y = rbt.front;
            rbt.removeFront;

            rbt.insert(x*y);
        }
        else {
            rbt.removeBack;
            rbt.removeBack;

            rbt.insert(1);
        }
    }

    rbt.front.writeln;
}