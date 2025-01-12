#include <iostream>
#include <vector>
using namespace std;
class Solution
{
public:
    bool isPalindrome(int x)
    {
        long long remainder, result = 0, temp = x;
        if (x < 0)
        {
            return false;
        }
        for (int i = i; x != 0; i++)
        {
            remainder = x % 10;
            result = (result * 10) + remainder;
            x /= 10;
        }
        if (result == temp)
            return true;
        return false;
    }
};
int main()
{

    return 0;
}