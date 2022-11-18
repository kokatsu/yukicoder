import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = new int[](N);

    int ttl= N * (N + 1) / 2, rem = ttl;
    foreach (i; 0 .. N-2) {
        writefln("? %d %d", i+2, N);
        stdout.flush;

        int S;
        readf("%d\n", S);

        res[i] = rem - S;
        rem -= res[i];
    }

    writefln("? %d %d", 1, N-1);
    stdout.flush;

    int S;
    readf("%d\n", S);

    res[N-2] = S - res.sum;
    res[N-1] = ttl - res.sum;

    writefln("! %(%s %)", res);
}