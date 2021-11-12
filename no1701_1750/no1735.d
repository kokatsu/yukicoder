import std;

void main() {
    string S = readln.chomp;

    if (S == "E") {
        writeln("F");
    }
    else if (S == "B") {
        writeln("C");
    }
    else {
        writeln(S, "#");
    }
}