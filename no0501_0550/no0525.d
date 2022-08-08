import std;

void main() {
    int h, m;
    readf("%d:%d", h, m);

    m += 5;

    if (m >= 60) {
        ++h, m %= 60;
    }

    if (h >= 24) {
        h %= 24;
    }

    writefln("%02d:%02d", h, m);
}