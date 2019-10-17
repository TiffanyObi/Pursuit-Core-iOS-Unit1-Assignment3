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
        opString = ["/", "+", "*", "-"].randomElement() ?? "*"
    }
    
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

var userIsUsing = true

//var userInput = readLine() ?? ""


//let finalResult = arithmeticOperation(str: userInput)
//print(finalResult)


repeat {
    
    
    print("Please type in your calculation with a space in between. for example: \"5 + 5\". ")
    
    var userInput = readLine() ?? ""
    
    var finalResult = arithmeticOperation(str:userInput)
    print(finalResult)

    print("Would you like to do another calculation? Type yes or no")
    
    userInput = readLine() ?? ""
    
    if userInput.lowercased() == "yes" {
        
        print("Lets have some fun!If you would like to use our \"Random Operater\" gadget ,write a calculation usuing \"?\" as the operand. ex: \" 5 ? 5 \"  ")
        
        userInput = readLine() ?? ""
        
        finalResult = arithmeticOperation(str:userInput)
           print(finalResult)
        
    } else if userInput.lowercased() == "no"{
        print(" You're Calculater is shutting off")
        
        userIsUsing = false
    }
    
} while userIsUsing


