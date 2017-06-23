using Microsoft.VisualStudio.TestTools.UnitTesting;
using LeetCodeSolution;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeSolution.Tests
{
    [TestClass()]
    public class LongestSubstringWithoutRepeatingCharactersTests
    {
        [TestMethod()]
        public void LengthOfLongestSubstringTest()
        {
            var solution = new LongestSubstringWithoutRepeatingCharacters();
            Assert.AreEqual(3, solution.LengthOfLongestSubstring("abcabcbb"));
            Assert.AreEqual(1, solution.LengthOfLongestSubstring("bbbbb"));
            Assert.AreEqual(3, solution.LengthOfLongestSubstring("pwwkew"));
            Assert.AreEqual(3, solution.LengthOfLongestSubstring("dvdf"));
            Assert.AreEqual(0, solution.LengthOfLongestSubstring(""));
        }
    }
}