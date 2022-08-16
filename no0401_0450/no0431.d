import std;

void main() {
    auto D = readln.chomp.split.to!(int[]);

    int S = D.back;
    D.popBack;

    bool isOK = true;

    int cnt;
    foreach (d; D) if (d == 1) ++cnt;

    if (cnt >= 2) isOK = false;

    if (S == 1) isOK = true;

    writeln(isOK ? "SURVIVED" : "DEAD");
}