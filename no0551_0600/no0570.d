import std;

void main() {
    auto H = new int[](3);
    foreach (i; 0 .. 3) readf("%d\n", H[i]);

    auto res = "ABC".to!(dchar[]);

    zip(H, res).sort!"a[0] > b[0]";

    foreach (r; res) r.writeln;
}