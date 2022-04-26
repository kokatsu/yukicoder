import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto g = S.sort.group;

    int cnt;
    dchar[] list;
    foreach (x; g) {
        if (x[1] == 2) ++cnt;
        else list ~= x[0];
    }

    string res = "Impossible";
    if (cnt == 6 && list.length == 1) res = list.front.to!string;

    res.writeln;
}