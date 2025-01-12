#include<iostream>
#include<vector>
using namespace std;
class Solution {
public:
    int numIdenticalPairs(vector<int> &nums)
{
    //[1,2,3,1,1,3]
    // i = 0,j=1 -> goodpairs=0
    // i = 0,j=2 -> goodpairs=1      // i = 1,j=2 -> goodpairs=2
    // i = 0,j=3 -> goodpairs=2      // i = 1,j=3 -> goodpairs=2     // i = 2,j=3-> goodpairs=2
    // i = 0,j=4 -> goodpairs=0      // i = 1,j=4 -> goodpairs=2     // i = 2,j=4-> goodpairs=2      // i = 3,j=4-> goodpairs=4
    // i = 0,j=5 -> goodpairs=2      // i = 1,j=5 -> goodpairs=2     // i = 2,j=5-> goodpairs=3      // i = 3,j=5-> goodpairs=4

    int goodPairs = 0;
    for (int i = 0; i <= nums.size() - 1; i++)
    {
        for (int j = i + 1; j < nums.size(); j++)
        {
            if (nums[i] == nums[j])
                goodPairs++;
        }
    }
    return goodPairs;
}
};
int main() {
    
    return 0;
}