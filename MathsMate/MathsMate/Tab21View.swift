//
//  Tab21View.swift
//  MathsMate
//
//  Created by Chris Milne on 20/01/2026.
//

import SwiftUI

struct Tab21View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
        
        ScrollView {
            
            Text("**Elimination** is another method for solving Simultaneous equations\nIt should not be the first choice as it does require extra work\n You have to get either of the equations into a state where elimination is possible.\n The aim is to make one of the variables have the same value in both equations, but one of the variables is negative whilst the other is positive.\n Then eliminate one of the variables.\n Let's say the following equation is given:\n**b ÷ 3 - 2a = 5   :  3a + 4b = 6**\n\nTo solve this type of equation\n1. Multiply the 1st equation by 3 to get rid of the fraction: Result: **b - 6a = 15**\n2. Multiply the 2nd equation by 2 to bring the bring the **a** terms in line **6a + 8b = 12**\n3. Add the equations together **(-6a+b)+(6a+8b) = 15+12**\n4. Eliminate and Simplify the **a** terms **9b = 27  :  b = 3**\n5. Apply value of **b** to the 2nd equation: **3a + 4b = 6** \n6. **Result: 3a + 12 = 6** \n7. **Simplify: 3a = -6**\n**Answer: a = -2  : b = 3**\n\nTry to solve the following exercises:\n").font(.title2)
            HStack(spacing: 1) {
                Button(action: {
                    showButton = true
                }) {
                    CustomButton(label: " See Exercises", width: 240, altColour: true)
                    
                } /// Custom Button
                .sheet(isPresented: $showButton) {
                    QuestionAnswerViewB(exercises12_21: Array(
                        ExerciseBank12_21.shared.elimination[0..<5]), mathsTopic: mathsTopic)
                } /// sheet
            } /// Hstack
        } /// Scroll
    }
}
 #Preview {
     Tab21View(mathsTopic: "Maths")
 }
