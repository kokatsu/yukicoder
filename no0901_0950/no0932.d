import std;

void main() {
    auto S = readln.chomp.split(',');

    bool isOK = S.all!(a => a == "AC");
    writeln(isOK ? "Done!" : "Failed...");
}