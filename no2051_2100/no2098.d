import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = "Alpha";
    if (S[0] == 'Z') res = "1st";
    if (S[0] == 'B') res = "2nd";
    if (S[0] == 'S') res = "3rd";
    if (S[0] == 'E') res = "4th";

    res.writeln;
}