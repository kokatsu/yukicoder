import std;

void main() {
    dchar[] S = readln.chomp.to!(dchar[]);

    dchar[] res;

    foreach (s; S) {
        if (std.uni.isUpper(s)) {
            res ~= std.uni.toLower(s);
        }
        else {
            res ~= std.uni.toUpper(s);
        }
    }

    res.writeln;
}