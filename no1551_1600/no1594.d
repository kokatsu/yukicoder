import std;

void main() {
    int N;
    readf("%d\n", N);

    auto E = readln.chomp.split.to!(int[]);

    int lim = 3 ^^ N;
    bool isOK;
    foreach (i; 0 .. lim) {
        int num = i;
        auto P = new int[](3);
        foreach (e; E) {
            P[num%3] += e;
            num /= 3;
        }

        isOK |= (P[0] == P[1] && P[1] == P[2]);
    }

    writeln(isOK ? "Yes" : "No");
}