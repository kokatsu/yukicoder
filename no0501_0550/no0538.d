import std;

void main() {
    long b1, b2, b3;
    readf("%d %d %d\n", b1, b2, b3);

    long rnum = b3 - b2, rden = b2 - b1;
    long dnum = b2 * rden - b1 * rnum;

    long res = (b3 * rnum + dnum) / rden;

    res.writeln;
}