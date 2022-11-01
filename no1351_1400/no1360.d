import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto B = new long[][](N);
    foreach (i; 0 .. N) B[i] = readln.chomp.split.to!(long[]);

    long W = long.min;
    long[] list;

    foreach (i; 1 .. 1<<N) {
        long num;
        long[] bit;

        foreach (j, a; A) {
            if ((i >> j) & 1) {
                num += a;
                bit ~= to!long(j+1);

                foreach (k; j+1 .. N) {
                    if ((i >> k) & 1) num += B[j][k];
                }
            }
        }

        if (W < num) {
            W = num;
            list = bit;
        }
    }

    W.writeln;
    writefln("%(%s %)", list);
}