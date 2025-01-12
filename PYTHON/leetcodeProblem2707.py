class Solution(object):
    def minExtraChar(self, s, dictionary):
        for word in dictionary:
            s = s.replace(word, '')
        return len(s)


ss = Solution()
s = "azvzulhlwxwobowijiyebeaskecvtjqwkmaqnvnaomaqnvf"
dictionary = ["na", "i", "edd", "wobow", "kecv", "b", "n", "or", "jj", "zul", "vk",
              "yeb", "qnfac", "azv", "grtjba", "yswmjn", "xowio", "u", "xi", "pcmatm", "maqnv"]
print(ss.minExtraChar(s, dictionary))
