def groupAnagrams(strs):
    mp = {}
    ans = []

    for s in strs:
        sorted_str = ''.join(sorted(s))
        if sorted_str in mp:
            ans[mp[sorted_str]].append(s)
        else:
            mp[sorted_str] = len(ans)
            ans.append([s])

    return ans

strs = ["eat","tea","tan","ate","nat","bat"]
print(groupAnagrams(strs))