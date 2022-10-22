import std;

void main() {
    string Sa, Pa, Xa, Sb, Pb, Xb;
    readf("%s %s %s\n%s %s %s\n", Sa, Pa, Xa, Sb, Pb, Xb);

    auto La = Pa.length, Lb = Pb.length;
    if (La == Lb) {
        if (Pa > Pb) Sa.writeln;
        else if (Pa < Pb) Sb.writeln;
        else writeln(-1);
    }
    else {
        if (La > Lb) Sa.writeln;
        else Sb.writeln;
    }
}