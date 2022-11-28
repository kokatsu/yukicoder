import std;

struct Grid {
    int x, y;

    int opCmp(Grid that) {
        if (this.x != that.x) {
            if (this.x > that.x) return 1;
            else return -1;
        }
        if (this.y != that.y) {
            if (this.y > that.y) return 1;
            else return -1;
        }
        return 0;
    }
}

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", S[i]);

    string res = S[0][0].to!string;

    Grid[] list;
    list ~= Grid(0, 0);
    foreach (i; 2 .. H+W) {
        bool[Grid] nxt;
        dchar mn = 'z';
        foreach (l; list) {
            if (l.x + 1 < H) {
                if (S[l.x+1][l.y] < mn) {
                    nxt.clear;
                    nxt[Grid(l.x+1, l.y)] = true;
                    mn = S[l.x+1][l.y];
                }
                else if (S[l.x+1][l.y] == mn) {
                    nxt[Grid(l.x+1, l.y)] = true;
                }
            }

            if (l.y + 1 < W) {
                if (S[l.x][l.y+1] < mn) {
                    nxt.clear;
                    nxt[Grid(l.x, l.y+1)] = true;
                    mn = S[l.x][l.y+1];
                }
                else if (S[l.x][l.y+1] == mn) {
                    nxt[Grid(l.x, l.y+1)] = true;
                }
            }
        }

        res ~= mn;
        list = nxt.keys;
    }

    res.writeln;
}