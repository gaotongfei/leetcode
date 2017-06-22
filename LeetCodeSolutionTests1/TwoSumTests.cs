using Microsoft.VisualStudio.TestTools.UnitTesting;
using LeetCodeSolution;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeSolution.Tests
{
    [TestClass()]
    public class SolutionTests
    {
        [TestMethod()]
        public void TwoSumTest()
        {
            var solution = new Solution();
            var result = solution.TwoSum(new int[] {2, 7, 11, 15}, 9);
            CollectionAssert.AreEqual(result, new int[] {0, 1});

            var result2 = solution.TwoSum(new int[] {2, 8, 11, 15}, 10);
            CollectionAssert.AreEqual(result, new int[] {0, 1});

            var result3 = solution.TwoSum(new int[] {2, 8, 11, 15}, 19);
            CollectionAssert.AreEqual(result, new int[] {1, 2});
        }
    }
}