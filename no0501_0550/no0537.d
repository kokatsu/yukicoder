import std;

void main() {
    long N;
    readf("%d\n", N);

    long S = N.to!real.sqrt.floor.to!long;

    long[string] list;
    foreach (i; 1 .. S+1) {
        if (N % i == 0) {
            string a = i.to!string, b = to!string(N / i);
            ++list[a~b], ++list[b~a];
        }
    }

    list.length.writeln;
}