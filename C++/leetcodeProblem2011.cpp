#include <iostream>
#include <vector>
using namespace std;
class Solution
{
public:
    int finalValueAfterOperations(vector<string> &operations)
    {
        int X = 0;
        int size = operations.size();
        for (int i = 0; i < size; i++)
        {
            string operation = operations[i];
            if (operation[0] == '+' || operation[2] == '+')
                X++;
            else
                X--;
        }
        return X;
    }
};
int main()
{

    return 0;
}