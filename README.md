# Division
Division without the division operator. This became one of my favorite problem!

Given two integers dividend and divisor, divide two integers without using multiplication, division, and mod operator.

Example 1:
```
Input: dividend = 10, divisor = 3
Output: 3
Explanation: 10/3 = 3.33333.. which is truncated to 3.
```

Example 2:
```
Input: dividend = 7, divisor = -3
Output: -2
Explanation: 7/-3 = -2.33333.. which is truncated to -2.
```

Constraints:

```
-231 <= dividend, divisor <= 231 - 1
divisor != 0
```

Linear solution algorithm (ignoring integer "overflow" and negative number):
Time: `O(n)`, n absolute value of the dividend.

```
int divide(int x, int y)
{
 int quotient = 0;
 while (x <= y) {
    x = x - y;
    quotient += 1;
 }
 return quotient;
}
```

Complexity Analysis:
Let `n` be the absolute value of dividend.

Time Complexity : O(n).

Consider the worst case where the divisor is 1. For any dividend nnn, we'll need to subtract 1 a total of nnn times to get to 0. Therefore, the time complexity is O(n) in the worst case.

Space Complexity : O(1).

We only use a fixed number of integer variables, so the space complexity is O(1).

Seeing as n can be up to 2^31. this algorithm is too slow on the largest test cases.


