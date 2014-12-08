/**
* Copyright 2014 Silviu Schiau.
*
*
* Anagram
*
* Author: Silviu Schiau <pr@silviu.co>
* Version: 1.0.0
* License Apache License Version 2.0 http://www.apache.org/licenses/LICENSE-2.0.txt
*
* This copyright notice
* shall be included in all copies or substantial portions of the software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
* DEALINGS IN THE SOFTWARE.
*
*/

import UIKit

let word = "kjf"
let string = "djfiakdef"

/*
*
* Method n^2
*
*/
func isAnagram(word: String, string: String) -> Bool
{
    // Count the word chars matches
    var count = 0
    
    // Iterate all word's chars
    for charWord in word
    {
        var isFound = false
        
        // Iterate all string's chars
        for charString in string
        {
            if charWord == charString
            {
                // flag true if char is found
                isFound = true
            }
        }
        
        if isFound
        {
            ++count
            
            if count == countElements(word)
            {
                return true
            }
        } else {
            return false
        }
    }
    
    return false
}

/*
*
* Method ((n log n ) * 2) + (2 * n)
*
*/
func isAnagramWithSort(word: String, string: String) -> Bool
{
    let sortedWord = sorted(word)
    let sortedString = sorted(string)
    
    // Count matches
    var count = 0
    
    for charWord in sortedWord
    {
        if var index = find(sortedString, charWord)
        {
            ++count
            
            if count == countElements(word)
            {
                return true
            }
        }
    }
    
    return false
}

isAnagram(word, string)
isAnagramWithSort(word, string)
