import std;

void main() {
    string S;
    readf("%s\n", S);

    bool[string] list;

    void f(string x, string y = "") {
        if (x.empty) {
            list[y] = true;
        }
        else {
            f(x[1..$], y~x[0]);
            f(x[0..$-1], y~x[$-1]);
        }
    }

    f(S);

    auto res = list.length;
    res.writeln;
}