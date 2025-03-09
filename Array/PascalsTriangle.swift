/*
 Given an integer numRows, return the first numRows of Pascal's triangle.
 Example 1:
 
 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
 Example 2:
 
 Input: numRows = 1
 Output: [[1]]
 
 Constraints:
 
 1 <= numRows <= 30
 */

func generate(_ numRows: Int) -> [[Int]] {
    
    guard numRows >= 1 && numRows <= 30 else { return [[]] }
    
    var result: [[Int]] = [[1]] // Initialize the first row
    
    for i in 1..<numRows {
        var row: [Int] = [1] // First element is always 1
        
        for j in 1..<i {
            row.append(result[i - 1][j - 1] + result[i - 1][j])
        }
        
        row.append(1) // Last element is always 1
        result.append(row)
    }
    
    return result
}

print(generate(4))
