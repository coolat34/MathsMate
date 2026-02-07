//
//  Handler.swift
//  MathsMate
//
//  Created by Chris Milne on 14/12/2025.
//
import SwiftUI
import Foundation


    enum Topic1_11 {
        case transform
        case simplify
        case powerMultiply
        case powerDivide
        case fractAdd
        case fractSub
        case fractMul
        case fractDiv
        
   
    }


    
struct Tabs: Identifiable {
    let id = UUID()
    let mathsTopic: String
    let img: String
    let tag: Int?
}
   
    
    struct Exercise1_11: Identifiable  {
        let id = UUID()
        let question: String
        let ans1: String
        let ans2: String
        let ans3: String
        let ans4: String
        let ans5: String
        
    }
final class ExerciseBank1_11 {
    
    static let shared = ExerciseBank1_11()
    
    private init() {}
    
    
    
    
    let transform: [Exercise1_11] = [
        Exercise1_11(question: "5a + 6b + 2a - 3b", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Add Like Terms: 7a + 3b"),
        Exercise1_11(question: "6x + 2y - 3x + 4y - 3", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Add Like Terms: 3x + 6y - 3"),
        Exercise1_11(question: "a - 2 + 3b + 6 + 5a", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Add Like Terms: 6a + 3b + 4"),
        Exercise1_11(question: "23a + 45b + 67c - 12a + 34b", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Add Like Terms: 11a + 79b + 67c"),
        Exercise1_11(question: "-18a + 9b -6c + a - 3b + 2c", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Add Like Terms: -17a + 6b - 4c")
    ]
    
    let simplify: [Exercise1_11] = [
        Exercise1_11(question: "6x + 2y - 3x + 4y -3", ans1: "Substitute values for x and y", ans2: "18  + 4 - 9 + 8 - 3", ans3: "", ans4: "", ans5: "Answer = 18"),
        Exercise1_11(question: "4xy - 2xy + 6xy", ans1: "Substitute values for x and y", ans2: "(4x3x2) - (2x3x2) + (6x3x2)", ans3: "24 - 12 + 36", ans4: "", ans5: "Answer  = 48"),
        Exercise1_11(question: "x - 2 + 3x + 6 + 5y", ans1: "Substitute values for x and y", ans2: "3 - 2 + 9 + 6 + 10", ans3: "", ans4: "", ans5: "Answer   = 26"),
        Exercise1_11(question: "15x - 3y + 6y +7x - 5", ans1: "Substitute values for x and y", ans2: "59 + 6 - 5", ans3: "", ans4: "", ans5: "Answer    = 60"),
        Exercise1_11(question: "-32x + 12y - 4y + 16y + 24x", ans1: "Substitute values for x and y", ans2: "72 + 48", ans3: "", ans4: "", ans5: "Answer   = 120")
    ]
    
    let powerMultiply: [Exercise1_11] = [
        Exercise1_11(question: "x³ x y³", ans1: "27 x 8", ans2: "", ans3: "", ans4: "", ans5: "Answer   = 216"),
        Exercise1_11(question: "2x³ - 3y³", ans1: "54 - 24", ans2: "", ans3: "", ans4: "", ans5: "Answer   = 30"),
        Exercise1_11(question: "3x³ + 4y⁶", ans1: "81 + 256", ans2: "", ans3: "", ans4: "", ans5: "Answer   = 337"),
        Exercise1_11(question: "2xy + 3x²y", ans1: "12 + 54", ans2: "", ans3: "", ans4: "", ans5: "Answer   = 66"),
        Exercise1_11(question: "2x²y + 3xy²", ans1: "36 + 36", ans2: "", ans3: "", ans4: "", ans5: "Answer   = 72")
    ]
    
    let powerDivide: [Exercise1_11] = [
        Exercise1_11(question: "84a⁴ ÷ 4a²", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Answer = 21a²"),
        Exercise1_11(question: "27a⁵ ÷ 9a²", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Answer = 3a³"),
        Exercise1_11(question: "64a⁴ ÷ 16a³", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Answer = 4a"),
        Exercise1_11(question: "125a⁵ ÷ 25a⁴", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Answer = 5a"),
        Exercise1_11(question: "256a⁶ ÷ 64a⁴", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "Answer = 4a²")
    ]
    
    let fractAdd: [Exercise1_11] = [
        Exercise1_11(question: "a ÷ 5 + a ÷ 7", ans1: "Find the LCD: 35", ans2: "Divide LCD by 5 & Multiply by a", ans3: "Divide LCD by 7 & Multiply by a", ans4: "7a + 5a ÷35", ans5: "Answer   = 12a ÷ 35"),
        Exercise1_11(question: "2x ÷ 3 + 3x ÷ 5", ans1: "Find the LCD: 15", ans2: "Divide LCD by 3 & Multiply by 2x:", ans3: "Divide LCD by 5 & Multiply by 3x", ans4: "10x + 9x ÷ 15", ans5: "Answer   = 19x ÷ 15"),
        Exercise1_11(question: "3a ÷ 2b + 5a ÷ 3b", ans1: "Find the LCD: 6b", ans2: "Divide LCD by 2b & Multiply by 3a", ans3: "Divide LCD by 3b & Multiply by 5a", ans4: "9ab + 10ab ÷ 6b", ans5: "Answer   = 19ab ÷ 6b"),
        Exercise1_11(question: "3ab + 5 ÷ 2b", ans1: "Find the LCD: 2b", ans2: "Divide LCD by 1 & Multiply by 3ab", ans3: "Divide LCD by 2b & Multiply by 5", ans4: "3ab + 5b ÷ 2b", ans5: "Answer   = 3ab + 5 ÷ 2"),
        Exercise1_11(question: "x + 4 ÷ 3x", ans1: "Expand to x÷1 + 4÷3x", ans2: "Divide LCD (3) by 1 & Multiply by x", ans3: "Divide LCD(3) by 3 & Multiply by 4", ans4: "(3x + 4x) ÷ 3", ans5: "Answer = 7x ÷ 3")
    ]
    
    let fractSub: [Exercise1_11] = [
        Exercise1_11(question: "a ÷ 5 - a ÷ 7", ans1: "Find the LCD: 35", ans2: "Divide LCD by 5 & Multiply by a", ans3: "Divide LCD by 7 & Multiply by a", ans4: "7a - 5a ÷35", ans5: "Simplify = 2a ÷ 35"),
        Exercise1_11(question: "2x ÷ 3 - 3x ÷ 5", ans1: "Find the LCD: 15", ans2: "Divide LCD by 3 & Multiply by 2x", ans3: "Divide LCD by 5 & Multiply by 3x", ans4: "10x - 9x ÷ 15", ans5: "Simplify = x ÷ 15"),
        Exercise1_11(question: "3a ÷ 2b - 5a ÷ 3b", ans1: "Find the LCD: 6b", ans2: "Divide LCD by 2b & Multiply by 3a", ans3: "Divide LCD by 3b & Multiply by 5a", ans4: "9ab - 10ab ÷ 6b", ans5: "Simplify = -ab ÷ 6b"),
        Exercise1_11(question: "3ab - 5 ÷ 2b", ans1: "No LCD exists", ans2: "Already in simplest form", ans3: "No common factors", ans4: "Stays the same ", ans5: "= 3ab - (5 ÷ 2b)"),
        Exercise1_11(question: "x - 2 ÷ 6x", ans1: "Expand to x ÷ 1 - 2 ÷ 6x", ans2: "Simplify x ÷ 1 - 1 ÷ 3x", ans3: "Divide LCD (3x) by 1 Multiply by x", ans4: "Divide LCD(3x) by 3x Multiply by 1", ans5: "3x-x ÷ 3x = 2x ÷ 3x")
    ]
    
    let fractMul: [Exercise1_11] = [
        Exercise1_11(question: "a ÷ 5 x a ÷ 7", ans1: "Cannot Simplify", ans2: "Multiply values above the line a²", ans3: "Multiply values below the line 35", ans4: "", ans5: " = a² ÷ 35"),
        Exercise1_11(question: "2x ÷ 3 x 3x ÷ 5", ans1: "Cannot Simplify", ans2: "Multiply values above the line 6x²", ans3: "Multiply values below the line 15", ans4: "6x² ÷ 15", ans5: "Simplify = 2x² ÷ 5"),
        Exercise1_11(question: "3a ÷ 2b x 5a ÷ 3b", ans1: "Cannot Simplify", ans2: "Multiply values above the line 15a²", ans3: "Multiply values below the line 6b²", ans4: "15a² ÷ 6b²", ans5: "Simplify = 5a² ÷ 2b²"),
        Exercise1_11(question: "3ab x 5 ÷ 2b", ans1: "Cannot Simplify", ans2: "Multiply values above the line 15ab", ans3: "Multiply values below the line 2b", ans4: "15ab ÷ 2b ", ans5: "Simplify = 15a ÷ 2"),
        Exercise1_11(question: "4x x 1 ÷ x", ans1: "Cannot Simplify", ans2: "Multiply values above the line 4x", ans3: "Multiply values below the line x", ans4: "4x ÷ x", ans5: "Simplify = 4")
    ]
    
    let fractDiv: [Exercise1_11] = [
        Exercise1_11(question: "(a ÷ 5) ÷ (a ÷ 7)", ans1: "Change ÷ to x & Flip 2nd fraction", ans2: "(a ÷ 5) x (7 ÷ a)", ans3: "Multiply values above & below", ans4: " = 7a ÷ 5a", ans5: "Simplify = 7 ÷ 5"),
        Exercise1_11(question: "(2x ÷ 3) ÷ (3x ÷ 5)", ans1: "Change ÷ to x & Flip 2nd fraction", ans2: "(2x ÷ 3) x (5 ÷ 3x)", ans3: "Multiply values above & below", ans4: " = 10x ÷ 9x", ans5: "Simplify = 10 ÷ 9"),
        Exercise1_11(question: "(3a ÷ 2b) ÷ (5a ÷ 3b)", ans1: "Change ÷ to x & Flip 2nd fraction", ans2: "(3a ÷ 2b) x (3b ÷ 5a)", ans3: "Multiply values above & below", ans4: " = 9ab ÷ 10ab", ans5: "Simplify = 9a ÷ 10"),
        Exercise1_11(question: "(3ab ÷ 5) ÷ 2b", ans1: "Change ÷ to x & Flip 2nd fraction", ans2: "(3ab ÷ 5) x (1 ÷ 2b)", ans3: "Multiply values above & below", ans4: " = 3ab ÷ 10b", ans5: "Simplify = 3a ÷ 10"),
        Exercise1_11(question: "(4X ÷ 1) ÷ X", ans1: "Change ÷ to x & Flip 2nd fraction", ans2: "(4X ÷ 1) x (1 ÷ X)", ans3: "Multiply values above & below", ans4: " = 4X ÷ X", ans5: "Simplify = 4")
    ]
    
    
    
    let dummy1_11: [Exercise1_11] = [
        Exercise1_11(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise1_11(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise1_11(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise1_11(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise1_11(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: "")
    ]
    func exercises1_11(for topic: Topic1_11) -> [Exercise1_11] {
        switch topic {
        case .transform:
            return transform
        case .simplify:
            return simplify
        case .powerMultiply:
            return powerMultiply
        case .powerDivide:
            return powerDivide
        case .fractAdd:
            return fractAdd
        case .fractSub:
            return fractSub
        case .fractMul:
            return fractMul
        case .fractDiv:
            return fractDiv
        
            
            
        }
    }
}

    enum Topic12_21 {
        case brackets
        case bracketsNested
        case Multiplication
        case Division
        case singleEquations
        case moreSingles
        case SimultaneousIntro
        case SimultaneousExtra
        case elimination
        
    }
    
    struct Exercise12_21: Identifiable  {
        let id = UUID()
        let question: String
        let ans1: String
        let ans2: String
        let ans3: String
        let ans4: String
        let ans5: String
        let ans6: String
        let ans7: String
        let ans8: String
        let ans9: String
        let ans10: String
        let ans11: String
        let ans12: String
        
    }
        
final class ExerciseBank12_21 {
    
    static let shared = ExerciseBank12_21()
    
    private init() {}
    let brackets: [Exercise12_21] = [
        Exercise12_21(question: "2(4x + 3y) + 6(2x - y)", ans1: "Evaluate values in Brackets", ans2: "8x + 6y + 12x - 6y", ans3: "Add Like terms", ans4: "8x + 6y + 12x - 6y", ans5: "   = 20x ", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 20x"),
        Exercise12_21(question: "5x - (5y + 2x)", ans1: "Evaluate values in Brackets", ans2: "5x - 5y - 2x", ans3: "Add Like terms", ans4: "", ans5: "3x - 5y", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 3x - 5y"),
        Exercise12_21(question: "x(2x - y) -x(x - y) - y(x + 2y)", ans1: "Evaluate values in Brackets", ans2: "2x² - xy - x² + xy - xy - 2y²", ans3: "Add Like terms", ans4: "", ans5: "= x² - xy - 2y²", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x² - xy - 2y²"),
        Exercise12_21(question: "6a²(3a + 7b - 6c)", ans1: "Helps to put in Brackets", ans2: "(6a² x 3a) + (6a² x 7b) - (6a² x 6c)", ans3: "", ans4: "Now Multiply Out", ans5: "= 18a³ + 42a²b - 36a²c", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 18a³ + 42a²b - 36a²c"),
        Exercise12_21(question: "5x - (x - 2y + 2z)", ans1: "Evaluate values in Brackets", ans2: "5x -x + 2y - 2z", ans3: "", ans4: "Add Like terms", ans5: "4x + 2y - 2z", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 4x + 2y - 2z")
    ]
    
    let bracketsNested: [Exercise12_21] = [
        Exercise12_21(question: "3{5a - 3(a + 1)}", ans1: "Inner bracket 3(5a-3a-3)", ans2: " Combine 3(2a-3)", ans3: "Multiply ", ans4: "", ans5: "= 6a - 9", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 6a - 9"),
        Exercise12_21(question: "5a² + 2a{b - (a + c)}", ans1: "Inner bracket 5a² + 2a(b - a - c)", ans2: "Next bracket 5a² + 2ab - 2a² - 2ac    ", ans3: "Simplify", ans4: "", ans5: " 3a² + 2ab - 2ac", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 3a² + 2ab - 2ac"),
        Exercise12_21(question: "3bc - 2{b(b - c) - c(b + c)}", ans1: "Brackets 3bc - 2{b² - bc - bc - c²}", ans2: "Simplify 3bc - 2{b² - 2bc - c²}", ans3: "Inner Bracket 3bc - 2b² + 4bc + 2c²", ans4: "Like terms", ans5: " = 7bc - 2b² + 2c²", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 7bc - 2b² + 2c²"),
        Exercise12_21(question: "15x - [3x - {2x - (x - 5)}]", ans1: "Inner bracket 15x - [3x-{2x-x+5}]", ans2: "Like terms  15x -[3x-{x+5}]", ans3: "Inner bracket 15x-[3x-x-5]", ans4: "Like terms 15x-[2x-5]", ans5: " = 13x + 5", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 13x + 5"),
        Exercise12_21(question: "2(x + y) -x -y", ans1: "Bracket first  2x+2y -x-y", ans2: "Like terms  x + 2y - y ", ans3: "Like terms", ans4: "", ans5: " x + y", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x + y")
    ]
    
    let Multiplication: [Exercise12_21] = [
        Exercise12_21(question: "(-2a) X (+2b)", ans1: "", ans2: "   ", ans3: "", ans4: "", ans5: "= -4ab", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: -4ab"),
        Exercise12_21(question: "(+10x) X (-2y)", ans1: "", ans2: "", ans3: "", ans4: "", ans5: "= -20xy", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: -20xy"),
        Exercise12_21(question: "(-4) X (+3) X (-2)", ans1: "", ans2: "", ans3: "", ans4: "", ans5: " = 24", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: 24"),
        Exercise12_21(question: "(-a) X (a - 2b - c)", ans1: "", ans2: "", ans3: "", ans4: "", ans5: " = -a² + 2ab +ac", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: -a² + 2ab +ac"),
        Exercise12_21(question: "(+ 2a) X (-5b) X (-2a)", ans1: "", ans2: "", ans3: "", ans4: "", ans5: " = +20ab²", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: +20ab²")
    ]
    
    let Division: [Exercise12_21] = [
        Exercise12_21(question: "(+10x) ÷ (-2y)", ans1: "", ans2: "Divide both sides by 2", ans3: "(+5x) ÷ (-y)", ans4: "Take away the brackets", ans5: "   = -5x ÷ y ", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: ""),
        Exercise12_21(question: "(-18xy) ÷ (-6x)", ans1: "Simplify", ans2: "Divide both sides by x", ans3: "-18y ÷ -6", ans4: "Divide both sides by 6", ans5: "   = +3y", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: ""),
        Exercise12_21(question: "9 ÷ 3 ÷ 6 x 2", ans1: "Flip the 1st division around", ans2: "3 ÷ 9 ÷ 6 x 2", ans3: "Change division to multiplication", ans4: "3 ÷ 9 x 6 x 2", ans5: "1 ÷ 3 x 12 = 4", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: ""),
        Exercise12_21(question: "(+15x²y²) ÷ (-5xy)", ans1: "Simplify", ans2: "Divide both sides by xy", ans3: "+15xy ÷ -5", ans4: "Divide both sides by 5", ans5: "   = -3xy", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: ""),
        Exercise12_21(question: "(-12a²b²) ÷ (-3ab)", ans1: "Simplify", ans2: "Divide both sides by ab", ans3: "-12ab  ÷ -3ab", ans4: "Divide both sides by 3", ans5: "   = +4ab", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: ""),
    ]
    let singleEquations: [Exercise12_21] = [
        Exercise12_21(question: "6x - 3 = 9", ans1: "Add 3 to both sides: 6x = 3 + 9", ans2: "Simplify: 6x = 12", ans3: "Divide both sides by 6: x = 2", ans4: "", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = 2"),
        Exercise12_21(question: "5x + 8 = 23", ans1: "Subtract 8 from both sides: 5x = 23 - 8", ans2: "Divide both sides by 5: x = 3", ans3: " ", ans4: " ", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = 3"),
        Exercise12_21(question: "3x = -48", ans1: "Divide both sides by 3: x = -48 ÷ 3", ans2: "Simplify: x = -16", ans3: "", ans4: "", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = -16"),
        Exercise12_21(question: "2.5x + 50 = 80", ans1: "Subtract 50 from both sides: 2.5x = 80 - 50", ans2: "Divide both sides by 2.5: x = 30 ÷ 2.5", ans3: "Simplify x = 12", ans4: "", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = 12"),
        Exercise12_21(question: "6y + 11 = 3y + 15", ans1: "Subtract 3y from both sides: 3y + 11 = 15", ans2: "Subtract 11 from both sides: 3y = 15 - 11", ans3: "Simplify: 3y = 4", ans4: "", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "answer: 3y = 4")
    ]
    
    let moreSingles: [Exercise12_21] = [
        Exercise12_21(question: "4(2x - 5) = 3(2x + 8)", ans1: "Multiply out the brackets: 8x - 20  = 6x + 24", ans2: "Add 20 to both side: 8x = 6x + 24 + 20", ans3: "Subtract 6x from both sides: 8x - 6x + 24 + 20", ans4: "Simplify: 2x = 44", ans5: "Simplify: x = 22", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = 22"),
        Exercise12_21(question: "3x - 2(x+ 4) = 5x - 28", ans1: "Evaluate bracket: 3x - 2x - 8 = 5x - 28", ans2: "Simplify: x - 8 = 5x - 28", ans3: "Add 8 to both sides: x = 5x - 28 + 8", ans4: "Subtract 5x from both sides: x - 5x = -28 + 8", ans5: "Simplify: -4x = -20", ans6: "Divide both sides by 4: -x = -5 ", ans7: "Simplify x = 5", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = 5"),
        Exercise12_21(question: "2(x+5) -3(x-6) = 20", ans1: "Evaluate brackets: 2x + 10 - 3x + 18 = 20", ans2: "Add 28 to both sides: 2x - 3x = 20 + 28", ans3: "Simplify: -x = 48", ans4: "Simplify: x = -48", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: x = -48"),
        Exercise12_21(question: "5(y-1) -2(y+6) = 2y + 12", ans1: "Evaluate brackets: 5y -5 -2y -12 = 2y + 12", ans2: "Simplify: 3y - 17 = 2y + 12", ans3: "Add 17 to both sides: 3y - 2y = 17 + 12", ans4: "Simplify: y = 29", ans5: "", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: y = 29"),
        Exercise12_21(question: "(y÷8) - (4÷5) = 0", ans1: "Cross multiply: 1st Nominator x 2nd Denominator = 5y", ans2: "Cross multiply 2nd Nominator x 1st Denominator = 32", ans3: "Evaluate: 5y - 32 = 0", ans4: "Add 32 to both sides: 5y = 32", ans5: "Divide both sies by 5: y = 32 ÷ 5", ans6: "", ans7: "", ans8: "", ans9: "", ans10: "", ans11: "", ans12: "Answer: y = 32 ÷ 5")
    ]
    
    
    let SimultaneousIntro: [Exercise12_21] = [
        Exercise12_21(question: "2x+y=21 : 3x+4y=44", ans1: "Isolate y : y=21-2x", ans2: "Apply y to 2nd equation : 3x+4(21-2x)=44", ans3: "Evaluate brackets: 3x+84-8x=44", ans4: "Simplify -5x=44-84", ans5: "Simplify: -5x=-40 then x=8", ans6: "Apply value of x to y", ans7: "y = 21 - 16", ans8: "Simplify: y = 5", ans9: "x=8 : y = 5", ans10: "", ans11: "", ans12: "Answer x=8 : y=5"),
        Exercise12_21(question: "x+y=15 : 3x-y=21", ans1: "Add the two equations together: (x+y)+(3x-y)=15+21", ans2: "Simplify: x+3x +y-y=36", ans3: "Simplify: 4x=36", ans4: "Divide both sides by 4: x=9", ans5: "Apply value of x to x+y=15", ans6: "9+y=15", ans7: "Simplify y=15-9", ans8: "Simplify y=6", ans9: "", ans10: "", ans11: "", ans12: "Answer x=9 : y=6"),
        Exercise12_21(question: "3x-2y=7 : x+2y=5", ans1: "Isolate x : x=5-2y", ans2: "Apply x to 1st equation: 3(5-2y)-2y=7", ans3: "Simplify 15-6y-2y=7", ans4: "Simplify: -8y=-8 then y=1", ans5: "Apply y to x+2y=5", ans6: "Simplify: x+2=5", ans7: "Simplify: x=5-2", ans8: "x=3", ans9: "", ans10: "",  ans11: "", ans12: "Answer x=3: y=1"),
        Exercise12_21(question: "2(x-4) = 3(y-3) : y-2x=-13",
                      ans1: "Evaluate brackets: 2x-8 = 3y-9 : y-2x=-13",
                      ans2: "Isolate y in 2nd equation: y=2x-13",
                      ans3: "Apply y to 1st equation: 2x-8 = 3(2x-13) -9",
                      ans4: "Evaluate brackets: 2x-8 = 6x-39 - 9",
                      ans5: "Simplify -4x=-40 then x = 10",
                      ans6: "Apply x to y=2x-13",
                      ans7: "y = 2(10) - 13",
                      ans8: "Evaluate brackets : y = 7",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: "Answer x=10  : y=7"),
        Exercise12_21(question: "3a - 2(b + 3) = 2 : 2(a - 3) + 4 = 3b - 5",
                      ans1: "Evaluate brackets: 3a - 2b - 6 = 2: 2a - 6 + 4 = 3b - 5",
                      ans2: "Simplify: 3a - 2b = 8 : 2a - 3b = -3",
                      ans3: "Isolate a in 1st equation: 3a = 8 + 2b : a = (8 + 2b)÷3",
                      ans4: "Apply a to 2nd: 2a - 3b = -3 : 2((8 + 2b)÷3) - 3b = -3",
                      ans5: "Evaluate brackets: (16 + 4b)÷3 - 3b = -3",
                      ans6: "Simplify 16 + 4b - 9b = -9",
                      ans7: "Simplify -5b = -25 then b = 5",
                      ans8: "Apply b to a = 3a - 2b = 8 :  3a - 2(5) = 8",
                      ans9: "Simplify 3a - 10 = 8",
                      ans10: "Simplify 3a = 18",
                      ans11: "Simplify a = 6",
                      ans12: "Answer a=6 : b=5")
    ]
    
   
    
    let SimultaneousExtra: [Exercise12_21] = [
        Exercise12_21(question: "a ÷ 8 - b = 4",
                      ans1: "Isolate a: Multiply by 8: a -8b = 32",
                      ans2: "Simplify: a = 8b + 32",
                      ans3: "Apply a to Equation: (8b + 32) ÷ 8 - b = 4",
                      ans4: "Simplify: 8b + 32 - 8b = 32",
                      ans5: "Simplify: 8b - 8b = 32 - 32",
                      ans6: "Simplify: b = 0",
                      ans7: "Apply b to a = 8(0) + 32",
                      ans8: "a = 32",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: "a=32 : b=-0"),
        Exercise12_21(question: "a ÷ 2 - b ÷ 5 = 1 : b - a ÷ 3 = 8",
                      ans1: "Multiply 1st equation by 10 and 2nd by 3",
                      ans2: "Result 5a - 2b = 10 : -a + 3b = 24",
                      ans3: "Isolate a in 2nd equation: -a = 24 - 3b",
                      ans4: "Muliply by -1 to reverse values: a = -24 + 3b",
                      ans5: "Apply value of a to 1st equation:",
                      ans6: "5a - 2b = 10",
                      ans7: "Simplify: 5(-24 + 3b) -2b = 10",
                      ans8: "Simplify: 15b - 120 - 2b = 10",
                      ans9: "Simplify: 13b = 130",
                      ans10: "Simplify b = 10",
                      ans11: "Apply b to 5a - 20 = 10: a = 30 ÷ 5",
                      ans12: "a = 6 : b = 10"),
        Exercise12_21(question: "a ÷ 2 + b = 1 : 3a - b ÷ 3 = 31 ÷ 2",
                      ans1: "Remove fractions by using LCD of 6",
                      ans2: "1st result is 3a + 6b = 6",
                      ans3: "2nd result is 18a -2b = 93",
                      ans4: "Simplify 1st result: 3a = 6 - 6b : a = 2 - 2b",
                      ans5: "Apply a to 2nd result: 18a -2b = 93",
                      ans6: "Simplify 2nd result: 18(2 - 2b) -2b = 93",
                      ans7: "Simplify 2nd result: 36 - 36b -2b = 93",
                      ans8: "Simplify 2nd result: -38b = 57",
                      ans9: "Simplify 2nd result: b = -57 ÷ 38: b = -3 ÷ 2",
                      ans10: "Apply b to 1st equation: a = 2 - 2b",
                      ans11: "a = 2 - 2(-3 ÷ 2): a = 2 + 3 : a = 5",
                      ans12: "Answer a = 5 : b = - 3 ÷ 2"),
        Exercise12_21(question: "2(a - 4) = 3(b - 3) : b - 2a = -13",
                      ans1: "Brackets 1st: 2a - 8 = 3b - 9",
                      ans2: "Isolate a: 2a = 3b - 9 + 8 :  ",
                      ans3: "2a = 3b - 1",
                      ans4: "Apply a to 2nd equation: ",
                      ans5: "b - 2(3b - 1) ÷ 2 = -13",
                      ans6: "Simplify: b - ((6b + 2) ÷ 2) = -13",
                      ans7: "Simplify : b - 3b + 1 = -13",
                      ans8: "Simplify : -2b = -14 : b = 7",
                      ans9: "Apply b to a = 3b - 1 ÷ 2",
                      ans10: "3(7) - 1 ÷ 2 = 20 ÷ 2",
                      ans11: "Simplify a = 10",
                      ans12: "a = 10 : b = 7"),
        Exercise12_21(question: "b ÷ 3 - 2a = 5 : 3a + 4b = 6",
                      ans1: "Simplify 1st equation",
                      ans2: "b ÷ 3 = 5 + 2a : b = 15 + 6a",
                      ans3: "Simplify 2nd equation",
                      ans4: "3a = 6 - 4b ",
                      ans5: "Apply b to 2nd equation",
                      ans6: "3a = 6 - 4(15 + 6a) : 3a = 6 - 60 - 24a",
                      ans7: "Simplify : 3a + 24a = -54",
                      ans8: "Simplify : 27a = -54 : a = -2",
                      ans9: "Apply a to b = 15 + 6a",
                      ans10: "Simplify b = 15 + 6(-2): b = 15 - 12",
                      ans11: "",
                      ans12: "Answer: a = -2 : b = 3")
    ]
    // ÷
    let elimination: [Exercise12_21] = [
        Exercise12_21(question: "2x - y = 10. : 3x + 2y = 29",
                      ans1: "Multiply 1st by 2 ",
                      ans2: "=: 4x - 2y = 20",
                      ans3: "Add together (4x-2y)+(3x+2y)",
                      ans4: "=: 20 + 29",
                      ans5: "Eliminate y",
                      ans6: "=: 7x = 49",
                      ans7: "=: x = 7",
                      ans8: "Apply x to 1st ",
                      ans9: "=: 14 - y = 10",
                      ans10: "=: -y = -4",
                      ans11: "=: y = 4",
                      ans12: "Answer x = 7 : y = 4"),
        Exercise12_21(question: "x ÷ 2 - y ÷ 5 = 1. : y - x ÷ 3 = 8",
                      ans1: "Eliminate fractions in 1st:  (5x - 2y) ÷ 10  = 1",
                      ans2: "Simplify 1st: 5x - 2y = 10",
                      ans3: "Eliminate fractions in 2nd: 3y - x = 24",
                      ans4: "Multiply 2nd by 5: 15y - 5x = 120",
                      ans5: "Add together",
                      ans6: "(5x - 2y) + (15y - 5x) = 10 + 120",
                      ans7: "Eliminate x",
                      ans8: "-2y + 15y = 130",
                      ans9: "13y  = 130 :  y = 10 ",
                      ans10: "Apply y to 1st",
                      ans11: "5x - 20 = 10 : 5x = 30 : x = 6",
                      ans12: "Answer y = 10 : x = 6"),
        Exercise12_21(question: "x ÷ 2 -y ÷ 3 = 1 ÷ 6   :   y ÷ 2 - x ÷ 6 = 5",
                      ans1: "Multiply 1st equation by 6: 6x ÷ 2 -6y ÷ 3 = 6 ÷ 6",
                      ans2: "Simplify 1st equation: 3x - 2y = 1",
                      ans3: "Multiply 2nd equation by 6: 6y ÷ 2 - 6x ÷ 6 = 30",
                      ans4: "Simplify 2nd equation: 3y - x = 30",
                      ans5: "Multiply 2nd equation by 3: 9y - 3x = 90",
                      ans6: "Add together:  (3x - 2y) + (9y - 3x) = 1 + 90",
                      ans7: "Eliminate x : -2y + 9y = 91",
                      ans8: "7y = 91 : y = 13",
                      ans9: "Apply y to 1st equation: 3x - 26 = 1",
                      ans10: "3x = 27 : x = 9",
                      ans11: "",
                      ans12: "Answer: y = 13 : x = 9"),
        Exercise12_21(question: "4(1 - p) = 7q + 8p : 6p + q + 8 = 0",
                      ans1: "Multiply out 1st equation:  4 - 4p = 7q + 8p",
                      ans2: "Rearrange 1st equation:  -4p-8p - 7q = -4",
                      ans3: "Simplify 1st equation: -12p - 7q = -4",
                      ans4: "Rearrange 2nd equation: 6p + q = -8",
                      ans5: "Multiply 2nd equation by 7 : 42p + 7q = -56",
                      ans6: "Add together: (-12p - 7q) + (42p + 7q) = -4 + (-56)",
                      ans7: "Eliminate q : -12p + 42p = -60",
                      ans8: "-30p = -60 : p = 2",
                      ans9: "Apply p to 1st equation : -12p - 7q = -4",
                      ans10: "24 - 7q = -4 : -7q = -4 - 24 ",
                      ans11: "-7q = -28",
                      ans12: "Answer q = 4 : p = 2"),
        Exercise12_21(question: "b ÷ 3 - 2a = 5. : 3a + 4b = 6",
                      ans1: "Multiply 1st equation by 3",
                      ans2: "b - 6a = 15",
                      ans3: "Multiply 2nd equation by 2 : 6a + 8b = 12",
                      ans4: "Add together",
                      ans5: "(b - 6a) + (6a + 8b) = 15 + 12",
                      ans6: "Eliminate a : b + 8b = 27 : 9b = 27",
                      ans7: "b = 3",
                      ans8: "Apply b to 2nd equation",
                      ans9: "3a + 12 = 6",
                      ans10: "3a = 6 - 12",
                      ans11: "3a = -6",
                      ans12: "Answer a = -2  : b = 3")
    ]
    
    let dummy12_21: [Exercise12_21] = [
        Exercise12_21(question: "",
                      ans1: "",
                      ans2: "   = ",
                      ans3: "",
                      ans4: "",
                      ans5: "",
                      ans6: "",
                      ans7: "",
                      ans8: "",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: ""),
        Exercise12_21(question: "",
                      ans1: "",
                      ans2: "   = ",
                      ans3: "",
                      ans4: "",
                      ans5: "",
                      ans6: "",
                      ans7: "",
                      ans8: "",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: ""),
        Exercise12_21(question: "",
                      ans1: "",
                      ans2: "   = ",
                      ans3: "",
                      ans4: "",
                      ans5: "",
                      ans6: "",
                      ans7: "",
                      ans8: "",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: ""),
        Exercise12_21(question: "",
                      ans1: "",
                      ans2: "   = ",
                      ans3: "",
                      ans4: "",
                      ans5: "",
                      ans6: "",
                      ans7: "",
                      ans8: "",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: ""),
        Exercise12_21(question: "",
                      ans1: "",
                      ans2: "   = ",
                      ans3: "",
                      ans4: "",
                      ans5: "",
                      ans6: "",
                      ans7: "",
                      ans8: "",
                      ans9: "",
                      ans10: "",
                      ans11: "",
                      ans12: "")
    ]
    
    func exercises12_21(for topicB: Topic12_21) -> [Exercise12_21] {
        switch topicB {
        case .brackets:
            return brackets
        case .bracketsNested:
            return bracketsNested
        case .Multiplication:
            return Multiplication
        case .Division:
            return Division
        case .singleEquations:
            return singleEquations
        case .moreSingles:
            return moreSingles
        case .SimultaneousIntro:
            return SimultaneousIntro
        case .SimultaneousExtra:
            return SimultaneousExtra
        case .elimination:
            return elimination
        }
    }
}
