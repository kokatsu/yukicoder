import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[] contains = new bool[](10);
    while (N > 0) {
        int d = N % 10;
        contains[d] = true;
        N /= 10;
    }

    if (contains[4] && contains[6]) {
        writeln("Beautiful");
    }
    else {
        writeln("...");
    }
}