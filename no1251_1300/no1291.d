import std;

void main() {
    int N;
    readf("%d\n", N);

    string[] cnts = new string[](101);
    cnts[1] = "10", cnts[2] = "90";
    foreach (i; 3 .. 101) {
        cnts[i] = cnts[i-1] ~ "0";
    }

    foreach (_; 0 .. N) {
        int d;
        readf("%d\n", d);

        cnts[d].writeln;
    }
}