/**
* Copyright 2014 Silviu Schiau.
*
*
* Apple method and Manual method to determine whether two NSRanges intersect
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

let rangeATest: NSRange = NSMakeRange(0, 20)
let rangeBTest: NSRange = NSMakeRange(5, 10)

/*
*
* Apple Method
*
*/
let intersection: NSRange = NSIntersectionRange(rangeATest, rangeBTest)

if intersection.length <= 0
{
    println("No intersection detected")
}else{
    let intersectionString: String = NSStringFromRange(intersection)
    println("Intersection detected at \(intersectionString)")
}

/* 
*
* Manual Method
*
*/
func detectIntersectionBetween(rangeA: NSRange, rangeB: NSRange) -> Bool
{
    for i in rangeA.location..<rangeA.length
    {
        if rangeB.location == i
        {
            for j in rangeB.location..<rangeB.length + 1
            {
                // Output all intersections
                println(j)
            }
            
            return true
        }else{
            println("No interesction at location \(i)")
        }
    }
    
    return false
}

detectIntersectionBetween(rangeATest, rangeBTest)