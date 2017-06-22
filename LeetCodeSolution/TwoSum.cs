using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeSolution
{
    public class Solution
    {
        public int[] ReturnIndices = new int[2];
        public int Sum;
        public int[] TwoSum(int[] nums, int target)
        {
            for (var i = 0; i < nums.Length; i++)
            {
                for (var j = i + 1; j < nums.Length; j++)
                {
                    Sum = nums[i] + nums[j];
                    if (Sum == target)
                    {
                        ReturnIndices[0] = i;
                        ReturnIndices[1] = j;
                    }
                }
            }
            return ReturnIndices;
        }
    }
}
