#include <iostream>
#include <vector>
using namespace std;
class Solution
{
public:
    string getBinaryValue(int n, int base)
    {
        string binaryValue = "";
        int res = 0;
        do
        {
            res = n % base;
            n /= base;
            binaryValue.insert(0, to_string(res));
        } while (n >= base);
        binaryValue.insert(0, to_string(n));
        return binaryValue;
    }
    bool isPalindromic(string str)
    {
        string::iterator ptr1 = str.begin();
        string::iterator ptr2 = str.end() - 1;
        while (ptr1 <= ptr2)
        {
            if (*ptr1 != *ptr2)
                return false;
            ptr1++;
            ptr2--;
        }
        return true;
    }
    bool isStrictlyPalindromic(int n)
    {
        for (int i = 2; i <= n - 2; i++)
        {
            string bValue = getBinaryValue(n, i);
            if (!isPalindromic(bValue))
                return false;
        }
        return true;
    }
};
int main()
{

    return 0;
}