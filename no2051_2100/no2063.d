import std;

void main() {
    string N;
    readf("%s\n", N);

    auto G = N.group.array;

    bool isOK = true, contain0;
    foreach (g; G) {
        if (g[0] == '1') isOK &= (g[1] > 1 && !contain0);
        else contain0 = true;
    }

    isOK |= (N.count('1') == 2);

    writeln(isOK ? "Yes" : "No");
}