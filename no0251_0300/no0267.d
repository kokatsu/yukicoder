import std;

void main() {
    int N;
    readf("%d\n", N);

    auto cards = readln.chomp.split;

    string suit = "DCHS";
    string num = "A123456789TJQK";

    bool myCmp(string a, string b) {
        if (a[0] == b[0]) {
            return indexOf(num, a[1]) < indexOf(num, b[1]);
        }
        else {
            return indexOf(suit, a[0]) < indexOf(suit, b[0]);
        }
    }

    cards.sort!myCmp;

    foreach (i, c; cards) {
        c.write;
        write(i == N - 1 ? "\n" : " ");
    }
}