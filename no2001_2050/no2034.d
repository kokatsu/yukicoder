import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp;

    auto res = new dchar[](N);
    foreach (i, s; S) {
        res[i] = to!dchar(('z' - 'a') - (s - 'a') + 'a');
    }

    res.writeln;
}