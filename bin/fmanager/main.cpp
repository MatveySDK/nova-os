#include <iostream>
#include <fstream>
#include <dirent.h>
#include <string>

using namespace std;

int main() {
    cout << "Enter Directory: ";
    string path;
    cin >> path;

    DIR *dir = opendir(path.c_str());
    if (dir == NULL) {
        cerr << "Error" << endl;
        return 1;
    }

    struct dirent *ent;
    while ((ent = readdir(dir)) != NULL) {
        cout << ent->d_name << endl;
    }

    closedir(dir);

    while (true) {
        cout << "Press Enter to continue... ";
        char c;
        cin.get(c);
        if (c == '\n') {
            break;
        }
    }
    getchar();
    return 0;
}