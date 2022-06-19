import std;

void main() {
    auto X = readln.chomp.split.to!(int[]);

    bool isOK;
    foreach (x; X) isOK |= (x % 3 == 0);

    writeln(isOK ? "Yes" : "No");
}