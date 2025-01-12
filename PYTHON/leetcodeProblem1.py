
def twoSum(nums,target):
    for i in range(len(nums)):
        temp = target-nums[i]
        try:
            index = nums.index(temp,i+1)
        except:
            continue
        if nums[i]+nums[index]==target:
            return [index,i]
    
nums = [1,2,3,4]

print(twoSum([3,3],6))