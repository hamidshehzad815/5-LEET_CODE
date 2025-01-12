#include <iostream>
#include <vector>
using namespace std;
 
struct ListNode
{
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution
{
public:
    ListNode *mergeNodes(ListNode *head)
    {
        int sum = 0;
        ListNode *newHead = nullptr;
        ListNode *newTail = nullptr;
        ListNode *temp = head;
        while (temp)
        {
            if (temp == head)
            {
                temp = temp->next;
                continue;
            }
            else if (temp->val != 0)
            {
                sum += temp->val;
            }
            else if (temp->val == 0)
            {
                ListNode *newNode = new ListNode(sum);
                if (!newHead)
                {
                    newHead = newNode;
                    newTail = newNode;
                }
                else
                {
                    newTail->next = newNode;
                    newTail = newNode;
                }
                sum = 0;
            }
            temp = temp->next;
        }
        return newHead;
    }
};