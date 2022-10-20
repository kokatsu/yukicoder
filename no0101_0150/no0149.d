import std;

void main() {
    int Aw, Ab, Bw, Bb, C, D;
    readf("%d %d\n%d %d\n%d %d\n", Aw, Ab, Bw, Bb, C, D);

    int Cab = min(Ab, C), Caw = C - Cab;
    Aw -= Caw, Ab -= Cab;
    Bw += Caw, Bb += Cab;

    int Dbw = min(Bw, D), Dbb = D - Dbw;
    Bw -= Dbw, Bb -= Dbb;
    Aw += Dbw, Ab += Dbb;

    Aw.writeln;
}