import std;

void main() {
    string S = readln.chomp;

    int disks;
    foreach (i; 0 .. 8) {
        string B = readln.chomp;

        disks += B.count('b');
        disks += B.count('w');
    }

    writeln((disks % 2 == 0) == (S == "oda") ? "oda" : "yukiko");
}