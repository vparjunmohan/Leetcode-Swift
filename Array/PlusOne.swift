/*
 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
 
 Increment the large integer by one and return the resulting array of digits.
 
 
 
 Example 1:
 
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].
 Example 2:
 
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 Incrementing by one gives 4321 + 1 = 4322.
 Thus, the result should be [4,3,2,2].
 Example 3:
 
 Input: digits = [9]
 Output: [1,0]
 Explanation: The array represents the integer 9.
 Incrementing by one gives 9 + 1 = 10.
 Thus, the result should be [1,0].
 */

let digits = [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]

func plusOne(_ digits: [Int]) -> [Int] {
    
    var digits = digits
    let n = digits.count
    
    for i in stride(from: n - 1, through: 0, by: -1) {
        if digits[i] < 9 {
            digits[i] += 1
            return digits
        }
        digits[i] = 0
    }
    
    digits.insert(1, at: 0)
    return digits
}

print(plusOne(digits))
