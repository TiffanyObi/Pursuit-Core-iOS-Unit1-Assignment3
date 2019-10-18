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
let userIsUsing = true

print("Youre calculator is now on!")
sleep(2)

repeat {
    
    
    print("Please type in your calculation with a space in between. for example: \"5 + 5\". ")
    
    let userInputOne = readLine() ?? ""
    
    var finalResult = arithmeticOperation(str:userInputOne)
    
    print(finalResult)

    print("Would you like to do another calculation? Type yes or no")
    
   let userInputtwo = readLine() ?? ""
    
    if userInputtwo.lowercased() == "yes" {
        
        print("Lets have some fun!If you would like to use our \"Random Operater\" gadget ,write a calculation usuing \"?\" as the operand. ex: \" 5 ? 5 \"  ")
        
        let userInputthree = readLine() ?? ""
        
       finalResult = arithmeticOperation(str:userInputthree)
          print(finalResult)
    
        
    } else if
        
        userInputtwo.lowercased() == "no"{
        
        print(" We have other Awesome features on this calculator. if you would like to use one of these functions please type \"map\", \"filter\", or \"reduce\".")
    
        let userInputfour = readLine() ?? ""
        
       // let higherOrderFunctions:[String] = ["filter","map","reduce"]
        
       // let higherOr = higherOrderFunctions.description
        
        
      //  print(higherOr)
        
       // if userInputfour == higherOr {
    
        switch userInputfour {
            
        case "filter" :
            
            print("In order to use this filter function, write \"filter (your set of numbers) by (a greater than or less than sign) 4\" for example you can write \" filter 1,2,3,4,5,6,7 by < 4\". This example will print out 1,2,3. REMEBER TO ADD THE \",\"")
            
            let userInputfive = readLine() ?? ""
            
            let userFilterInput = userInputfive.components(separatedBy: " " )
            
          //  var userNumberFilterInputArray:[Int] = []
            
            for char in userFilterInput {
                if char.contains("\(Int())") {
                
                }
            }
            
            
        case "map" :
            print()
            
            
        case "reduce" :
            print()
            
            
            
        default:
        
            print("Sorry that's not an option")
        }
            
    }
            //var userNumberFilterInputArray:[Int] = []
            //var userOpAr :String = ""
            //var userFilterNumBy: Int = user
            
            
            
           // print(filterFunc(arr: <#T##[Double]#>, closure: (Double) -> Bool))




    
} while userIsUsing


