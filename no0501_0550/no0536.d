import std;

void main() {
    auto S = readln.chomp;

    string res;
    if (S[$-2..$] == "ai") res = S[0..$-2] ~ "AI";
    else res = S ~ "-AI";

    res.writeln;
}