import std;

void main() {
    string N = readln.chomp;

    ulong l = N.length;
    ulong d = l / 3, r = l % 3;

    int decimalToOctal(int dec) {
        int oct, p = 1;

        while (dec > 0) {
            oct += (dec % 8) * p;
            dec /= 8;
            p *= 10;
        }

        return oct;
    }

    auto cnts = new int[](8);

    foreach (i; 0 .. d) {
        int M = N[i*3+r..(i+1)*3+r].to!int(16);
        int O = decimalToOctal(M);
        while (O > 0) {
            ++cnts[O%10];
            O /= 10;
        }
    }

    if (r > 0) {
        int M = N[0..r].to!int(16);
        int O = decimalToOctal(M);
        while (O > 0) {
            ++cnts[O%10];
            O /= 10;
        }
    }

    int c;
    int[] res;
    foreach (i; 0 .. 8) {
        if (c < cnts[i]) {
            c = cnts[i];
            res = [i];
        }
        else if (c == cnts[i]) {
            res ~= i;
        }
    }

    foreach (i; 0 .. res.length) {
        if (i == res.length - 1) {
            writeln(res[i]);
        }
        else {
            write(res[i], " ");
        }
    }
}