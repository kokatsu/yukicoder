import std;

void main() {
    int S;
    readf("%d\n", S);

    int N = S / 100;
    
    if (N == 4 || N == 5) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}