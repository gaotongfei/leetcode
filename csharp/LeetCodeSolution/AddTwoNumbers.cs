using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
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
        public static ListNode AddTwoNumbers(ListNode l1, ListNode l2)
        {
            var node = new ListNode(0);
            var cur = node;

            var carry = 0;
            var sum = 0;
            while (l1 != null || l2 != null)
            {
                var a = l1 != null ? (int) l1.val : 0;
                var b = l2 != null ? (int) l2.val : 0;
                sum = a + b + carry;
                carry = sum / 10;
                var digitNumber = sum % 10;

                cur.next = new ListNode(digitNumber);
                cur = cur.next;

                l1 = l1 != null ? l1.next : null;
                l2 = l2 != null ? l2.next : null;
            }

            if (carry > 0)
                cur.next = new ListNode(carry);

            return node.next;

        }

    }
}
