#include <iostream>
#include <vector>
using namespace std;
class Solution
{
public:
    string defangIPaddr(string address)
    {
        string validAddress = "";
        for (int i = 0; i < address.length(); i++)
        {
            if (address[i] == '.')
            {
                validAddress.push_back('[');
                validAddress.push_back('.');
                validAddress.push_back(']');
            }
            else
            {
                validAddress.push_back(address[i]);
            }
        }
        return validAddress;
    }
};
int main()
{

    return 0;
}