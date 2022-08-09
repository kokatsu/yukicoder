import std;

void main() {
    int[string] list;
    foreach (i; 0 .. 3) {
        auto S = readln.chomp;
        ++list[S];
    }

    string res;
    int cnt;
    foreach (key, val; list) {
        if (cnt < val) {
            res = key;
            cnt = val;
        }
    }

    res.writeln;
}