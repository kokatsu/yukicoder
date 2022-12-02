import std;

void main() {
    int N;
    readf("%d\n", N);

    ulong res = ulong.max;
    foreach (_; 0 .. N) {
        auto V = readln.chomp.to!(dchar[]);

        dchar d = V.maxElement;
        ulong m = (d <= '9' ? d - '0' : d - 'A' + 10) + 1;

        ulong num, p = 1;
        foreach_reverse (v; V) {
            ulong q = (v <= '9' ? v - '0' : v - 'A' + 10);
            num += p * q, p *= m;
        }

        res = min(res, num);
    }

    res.writeln;
}