#include <iostream>
#include <vector>
using namespace std;
class Solution
{
public:
    int romanToInt(string s)
    {
        int sum = 0;
        char letter, next;
        for (int i = 0; i < s.length(); i++)
        {
            letter = s[i];
            next = s[i + 1];
            switch (letter)
            {
            case 'I':
                if (next == 'V')
                {
                    sum = sum + (checkromanvalue(next) - 1);
                    i++;
                }
                else if (next == 'X')
                {
                    sum = sum + (checkromanvalue(next) - 1);
                    i++;
                }
                else
                {
                    sum += checkromanvalue(letter);
                }
                continue;
            case 'X':
                if (next == 'L')
                {
                    sum = sum + (checkromanvalue(next) - 10);
                    i++;
                }
                else if (next == 'C')
                {
                    sum = sum + (checkromanvalue(next) - 10);
                    i++;
                }
                else
                {
                    sum += checkromanvalue(letter);
                }
                continue;
            case 'C':
                if (next == 'D')
                {
                    sum = sum + (checkromanvalue(next) - 100);
                    i++;
                }
                else if (next == 'M')
                {
                    sum = sum + (checkromanvalue(next) - 100);
                    i++;
                }
                else
                {
                    sum += checkromanvalue(letter);
                }
                continue;
            default:
                sum += checkromanvalue(letter);
            }
        }
        return sum;
    }
    int checkromanvalue(char roman)
    {
        int value = 0;
        if (roman == 'I')
            value = 1;
        else if (roman == 'V')
            value = 5;
        else if (roman == 'X')
            value = 10;
        else if (roman == 'L')
            value = 50;
        else if (roman == 'C')
            value = 100;
        else if (roman == 'D')
            value = 500;
        else if (roman == 'M')
            value = 1000;
        return value;
    }
};
int main()
{

    return 0;
}