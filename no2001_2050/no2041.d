import std;

void main() {
    auto T = readln.chomp;

    dchar[] res;
    bool isSkip;
    foreach (t; T) {
        if (t == '(') res ~= '@', isSkip = true;
        else if (t == ')') isSkip = false;
        else if (!isSkip) res ~= t;
    }

    res.writeln;
}