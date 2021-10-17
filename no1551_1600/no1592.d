import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);
    
    auto T = "kyoprotenkei90".to!(dchar[]);

    S.sort;
    T.sort;

    if (S == T) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}