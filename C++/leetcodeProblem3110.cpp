#include <iostream>
using namespace std;

class Solution
{
public:
    int scoreOfString(string str)
    {
        int total = 0;
        int a = 0;
        int b = 0;

        for (int i = 0; i <= str.length() - 2; i++)
        {
            a = int(str[i]);
            b = int(str[i + 1]);
            total += abs(a - b);
        }
        return total;
    }
};