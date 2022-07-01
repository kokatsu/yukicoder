import std;

struct User {
    ulong len;
    string a, b;
}

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    int[User] cnts;
    foreach (i; 0 .. N) {
        S[i] = readln.chomp;
        auto len = S[i].length;
        foreach (j; 0 .. len) {
            auto t = User(len, S[i][0..j], S[i][j+1..len]);
            ++cnts[t];
        }
    }

    foreach (s; S) {
        int res;

        auto len = s.length;
        foreach (i; 0 .. len) {
            auto t = User(len, s[0..i], s[i+1..len]);
            if (t in cnts) res += cnts[t] - 1;
        }

        res.writeln;
    }
}