import std;

void main() {
    auto S = readln.chomp;

    S = S.replace("I", "1");
    S = S.replace("l", "1");

    S = S.replace("O", "0");
    S = S.replace("o", "0");

    S.writeln;
}