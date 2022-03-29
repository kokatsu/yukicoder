import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        auto S = readln.chomp.to!(dchar[]);

        auto D = S.map!(a => to!int(a - '0')).array;
        auto len = D.length;
        while (len > 1) {
            foreach (i; 0 .. len-1) {
                D[i] += D[i+1];

                if (D[i] >= 10) {
                    D[i] %= 10;
                    ++D[i];
                }
            }

            --len;
        }

        D.front.writeln;
    }
}