//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    var opString = opString
    
    if opString == "?" {
        opString = ["/", "+", "*", "-"].randomElement() ?? "*"}


    switch opString {
        
    case "+":
        return {x, y in x + y}
    case "-":
        
        return {x, y in x - y}
    case "*":
        
        return {x, y in x * y}
    case "/":
        
        return {x, y in x / y}
    default:
        
        return {x, y in x + y}
        }
    }

// ****************************** //

func arithmeticOperation (str: String) -> Double {
    
    let userInputArray = str.components(separatedBy: " " )
    
    if userInputArray.count != 3 {
        
        print(userInputArray)
        
        return 0.0
    }
    
    let op1 = Double(userInputArray[0]) ?? 0.0
    let op2 = Double(userInputArray[2]) ?? 0.0
    let operater = userInputArray[1]
    
    
    let closureOp = mathStuffFactory(opString: operater)

    let result = closureOp(op1,op2)

    return result
}

// ******************************* //

func filterFunc(arr: [Double],closure:(Double) -> Bool) -> [Double] {
     var result = [Double]()
    
    for num in arr {
        
        if closure(num) {
            result.append(num)
            }
    }

    return result
}
// ******************************* //

//    map 6,7,98,09,89 by (+,-,/,*, <, >) 7

func stringToArray (str2: String) -> [Double] {
    
    //var stringArray:[Int] = []
    
    for char in str2 {
        if char.isNumber {
           // stringArray.append()     }
    }
    
 
}
    return [Double]()
}

//func filterInput(input:String) -> [Int] {
//    var output =
//
//
//
//   return output
//}



let userIsUsing = true

print("Youre calculator is now on!")
sleep(2)

print("Please type in your calculation with a space in between. for example: \"5 + 5\". ")

let firstline = readLine() ?? ""

print(arithmeticOperation(str: firstline))

repeat {
    
      print("Would you like to do another calculation? Type yes or no")

    
//    print("Please type in your calculation with a space in between. for example: \"5 + 5\". ")
    
    let userInputOne = readLine()?.lowercased() ?? ""
    
    if userInputOne == "yes" {
        
        print("Please type in your calculation with a space in between. for example: \"5 + 5\". ")
    
        let userInputone1 = readLine() ?? ""
        
        let finalResult = arithmeticOperation(str:userInputone1)
    
        print(finalResult)
        
    } else if userInputOne == "no" {

   print("Lets have some fun!If you would like to use our \"Random Operater\" gadget ,write a calculation usuing \"?\" as the operand. ex: \" 5 ? 5 \" . Remember to put a space between the numbers.  ")
    
   let userInputtwo = readLine() ?? ""
    
    
        
      let finalResult = arithmeticOperation(str:userInputtwo)
          print(finalResult)
    
        
    }
        
        print(" We have other Awesome features on this calculator. if you would like to use one of these functions please type \"map\", \"filter\", or \"reduce\".")
    
        let userInputfour = readLine()?.lowercased() ?? ""
        
   
    
        switch userInputfour {
            
        case "filter" :
            
            print("In order to use this filter function, start with an array of numbers . An example can be \" 12,567,90,7,234,50,9 \". Remember to seperate your numbers using commas! The numbers would be filtered by multiples of 7")
            
            let userInputfive = readLine() ?? ""
            
            let userFilterInput = userInputfive.components(separatedBy: "," )
            
            var outcomeFilter = [Int]()
            
            

            for number in userFilterInput {
                if (Int(number) ?? -99) % 7 == 0 {
                     outcomeFilter.append(Int(number) ?? -99)
                }
               
            }
            
            print(outcomeFilter)
        case "map" :
            
            print("For the map function we're switching it up a bit. You have to translate the numbers you input by either subtracting them from or dividing them by 175. Ex. \" 23,56,7,8,456,12 - \". Remember proper commas and spaces.")
        let mapline = readLine() ?? ""
            
            let mapArray = mapline.components(separatedBy: " ")
            let inTArray = mapArray[0]
            
            let intSep = inTArray.components(separatedBy: ",")
            var ints = [Double]()
            for int in intSep {
                ints.append(Double(int) ?? -99)
            }
            let operand = mapArray[1]
            var mapOutput = [Double]()
           switch operand {
           case "-":
            
            for num in ints {
                mapOutput.append(175 - num)
            }
            print(mapOutput)
           case "/":
            for num in ints {
                mapOutput.append(num / 175)
            }

            print(mapOutput)
           default:
            print("Please try again")
            }
            
        case "reduce" :
            print("To use the reduce function. You will be reducing your input array by either multiplying them or adding them together. Ex input \" 23,567,8,9,76,12 + ")
            
            let reduceline = readLine() ?? ""
            let reduceArray = reduceline.components(separatedBy: " ")
             let inTArray = reduceArray[0]
             
             let intSep = inTArray.components(separatedBy: ",")
             var ints = [Double]()
             for int in intSep {
                 ints.append(Double(int) ?? -99)
             }
             let operand = reduceArray[1]
            
            switch operand {
            case "+":
                var reduceAddOutput = 0.0
             
             for num in ints {
                 reduceAddOutput += num
             }
             print(reduceAddOutput)
                
            case "*":
                var reduceMultOutput = 1.0
             for num in ints {
              reduceMultOutput *= num
             }
             print(reduceMultOutput)
            default:
             print("Please try again")
             }
             
            
            
            
        default:
        
            print("Sorry that's not an option")
        }

    
} while userIsUsing


