import std;

void main() {
    string N = readln.chomp;

    long M = N[0..3].to!long;
    if (M % 10 >= 5) M += 10;

    string S = M.to!string;

    long a = S[0] - '0';
    long b = S[1] - '0';
    long c = N.length + S.length - 4;

    format("%d.%d*10^%d", a, b, c).writeln;
}