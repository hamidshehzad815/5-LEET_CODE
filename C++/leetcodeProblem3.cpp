#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
class Solution
{
public:
    int lengthOfLongestSubstring(string s)
    {
        if (s.empty())
            return 0;
        if (s.size() == 1)
            return 1;
        string subString = "";
        vector<int> longestSubstring;
        int count = 0;
        for (int i = 0; i < s.size(); i++)
        {
            for (int j = i; j < s.size(); ++j)
            {
                char ch = s[j];
                if (subString.find(ch) != -1)
                {
                    longestSubstring.push_back(count);
                    subString.clear();
                    count = 0;
                    break;
                }
                count++;
                subString.push_back(s[j]);
            }
        }
        sort(longestSubstring.begin(), longestSubstring.end());
        return longestSubstring.back();
    }
};
int main()
{

    return 0;
}