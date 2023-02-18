class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {        
        // special case
        if(dividend == Int.min && divisor == -1){
            return Int.max
        }
        if(dividend == Int.min && divisor == 1) {
            return Int.min
        }
        
        if (divisor == 1) {
            return dividend
        }
        
        // if both are of the same sign, answer is positive
        let isPositive = (dividend < 0) == (divisor < 0 )
        
        var dividend = abs(dividend)
        var divisor = abs(divisor)
        
        if (dividend == divisor) {
            return isPositive ? 1 : -1
        }
        var quotient = 0;
        while (dividend >= divisor) {
            var powerOfTwo = 1
            var value = divisor
            while (value < Int.max && value + value < dividend) {
                value += value
                powerOfTwo += powerOfTwo
            }
            quotient += powerOfTwo
            dividend -= value
        }
        return isPositive ? quotient : -quotient
    }
}
