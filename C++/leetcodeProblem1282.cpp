#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;
class Solution
{
public:
    vector<vector<int>> splitVectorIterators(const vector<int> &vec, size_t chunkSize)
    {
        cout << "CHUNK SIZE: " << chunkSize << endl;
        vector<vector<int>> result;
        auto begin = vec.begin();
        auto end = vec.end();

        while (begin != end)
        {
            auto nextEnd = begin + min(chunkSize, static_cast<size_t>(distance(begin, end)));
            result.emplace_back(begin, nextEnd);
            begin = nextEnd;
        }

        return result;
    }
    vector<vector<int>> groupThePeople(vector<int> &groupSizes)
    {
        unordered_map<int, vector<int>> map;
        vector<vector<int>> ans;

        for (int i = 0; i < groupSizes.size(); i++)
        {
            map[groupSizes[i]].push_back(i);
        }

        for (const auto &pair : map)
        {
            if (pair.second.size() > pair.first)
            {
                vector<vector<int>> chunks = splitVectorIterators(pair.second, pair.first);
                ans.insert(ans.end(), chunks.begin(), chunks.end());
            }
            else
            {
                ans.push_back(pair.second);
            }
        }
        return ans;
    }
};
int main()
{

    return 0;
}