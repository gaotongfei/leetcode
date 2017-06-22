using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeSolution
{
    public class ListNode
    {
        public object val;
        public ListNode next;
        public ListNode(int x)
        {
            val = x;
            next = null;
        }

        public ListNode()
        {
            val = null;
            next = null;

        }
    }
    public class AddTwoNumbersSolution 
    {
        public ListNode AddTwoNumbers(ListNode l1, ListNode l2)
        {
            var node = new ListNode();
            var cur = node;

            var carry = 0;
            var sum = 0;
            while (l1 != null || l2 != null)
            {
                sum = (int) l1.val + (int) l2.val + carry;
                sum = sum % 10;
                carry = sum / 10;

                if (l1 != null)
                    l1 = l1.next;
                if (l2 != null)
                    l2 = l2.next;

                cur.next = new ListNode();
                cur.val = sum;
            }
            return cur;
        }

    }
}
