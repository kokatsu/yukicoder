import std;

void main() {
    string S;
    readf("%s\n", S);

    real x = 0.0, y = 0.0;
    foreach (s; S) {
        if (s == 'N') x += 1.0;
        else if (s == 'E') y += 1.0;
        else if (s == 'W') y -= 1.0;
        else x -= 1.0;
    }

    real res = hypot(x, y);
    writefln("%.10f", res);
}