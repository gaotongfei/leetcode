using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeSolution
{
    public class LongestSubstringWithoutRepeatingCharacters
    {
        public int LengthOfLongestSubstring(string s)
        {
            var hs = new HashSet<char>();
            var lengthList = new List<int>();
            var stringArr = new Char[s.Length];
            var index = 0;
            var digit = 0;
            while (index < s.Length)
            {
                if (!hs.Contains(s[index]))
                {
                    hs.Add(s[index]);
                    index += 1;
                }
                else
                {
                    lengthList.Add(hs.Count);
                    hs.Clear();
                    digit = digit + 1;
                    index = digit;
                }

                if (index == s.Length && hs.Any())
                {
                    lengthList.Add(hs.Count);
                }
            }
            if (!lengthList.Any())
            {
                return 0;
            }
            return lengthList.Max();
        }
    }
}
