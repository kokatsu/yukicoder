import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    dchar[] res;

    long d = A / B;
    res ~= to!string(d).to!(dchar[]) ~ '.';
    A = (A % B) * 10;

    long l = 50;
    foreach (_; 0 .. l) {
        d = A / B;
        res ~= to!dchar(d+'0');
        A = (A % B) * 10;
    }

    res.writeln;
}