import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    G.sort!"a[1] > b[1]";

    string res = "NO HAND";
    if (G[0][1] == 3) {
        if (G[1][1] == 2) res = "FULL HOUSE";
        else res = "THREE CARD";
    }
    else if (G[0][1] == 2) {
        if (G[1][1] == 2) res = "TWO PAIR";
        else res = "ONE PAIR";
    }

    res.writeln;
}