import std;

void main() {
    auto S = readln.chomp;

    auto len = S.length;
    long rem = S.count('o');
    foreach (i, s; S) {
        real res = 100.0 * rem / (len - i);
        writefln("%.10f", res);

        if (s == 'o') --rem;
    }
}