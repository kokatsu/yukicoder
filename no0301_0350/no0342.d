import std;

void main() {
    dstring S = readln.chomp.to!dstring;

    dchar[][] res;
    dchar[] now;
    dchar pre;
    int cnt, num;

    foreach (i, s; S) {
        if (s == 'ｗ') {
            ++num;
        }
        else {
            if (pre == 'ｗ' && !now.empty) {
                if (cnt < num) {
                    cnt = num;
                    res = [now];
                }
                else if (cnt == num) {
                    res ~= now;
                }

                now = [];
                num = 0;
            }

            now ~= s;
        }

        pre = s;
    }

    if (pre == 'ｗ' && !now.empty) {
        if (cnt < num) {
            res = [now];
        }
        else if (cnt == num) {
            res ~= now;
        }
    }

    if (res.empty) {
        writeln;
    }
    else {
        foreach (r; res) {
            r.writeln;
        }
    }
}