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
     int gcd(int a, int b)
     {
         while (b != 0)
         {
             int temp = b;
             b = a % b;
             a = temp;
         }
         return a;
     }
     ListNode *insertGreatestCommonDivisors(ListNode *head)
     {
         ListNode *temp = head;
         ListNode *next = nullptr;
         int a = 0;
         int b = 0;
         int gcf = 0;
         while (temp->next != nullptr)
         {
             next = temp->next;
             a = temp->val;
             b = next->val;
             gcf = gcd(a, b);
             ListNode *newNode = new ListNode(gcf);
             newNode->next = next;
             temp->next = newNode;
             temp = next;
         }
         return head;
     }
 };
 int main()
 {

     return 0;
 }