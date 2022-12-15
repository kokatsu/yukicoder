import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto a = readln.chomp.split.to!(int[]);

    string S;
    readf("%s\n", S);

    auto d = new DList!int(a);
    foreach (s; S) {
        if (s == 'L') {
            auto f = d.front;
            d.removeFront;
            d.front += f;
            d.insertBack(0);
        }
        else {
            auto b = d.back;
            d.removeBack;
            d.back += b;
            d.insertFront(0);
        }
    }

    auto res = d.array;
    writefln("%(%s %)", res);
}