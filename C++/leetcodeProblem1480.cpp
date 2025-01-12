#include <iostream>
#include <vector>
using namespace std;
vector<int> runningSum(vector<int> &nums)
{
    vector<int> sum = {};
    int total = 0;
    for (auto num : nums)
    {
        total += num;
        sum.push_back(total);
    }
    return sum;
}
int main()
{
    vector<int> nums = {3, 1, 2, 10, 1};
    for (auto num : runningSum(nums))
    {
        cout << num << " ";
    }
    return 0;
}