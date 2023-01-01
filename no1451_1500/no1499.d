import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        auto input = readln.chomp.split;

        input[2] = input[2].succ;

        string res = input.join(" ");
        res.writeln;
    }
}