import std;

void main() {
    long D;
    readf("%d\n", D);

    long A = D * 108;
    auto B = A.to!string;

    writefln("%s.%s", B[0..$-2], B[$-2..$]);
}