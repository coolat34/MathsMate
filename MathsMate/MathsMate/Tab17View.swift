//
//  Tab17View.swift
//  MathsMate
//
//  Created by Chris Milne on 02/01/2026.
//

import SwiftUI

struct Tab17View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
       
            ScrollView {
                
                Text("A **Single equation** contains one unknown variable \n(usually a letter such as x, y, or z) and an equal sign (=).\n\n**TIP** If the same number is added or subtracted from both sides of the equation, both sides remain equal\n\n**For Example**\n 5b - 3 = 22. \nAdd 3 to both sides and the result is: 5b = 25\n Divide both sides by 5\nand the answer is: b = 5\nAlternatively, change -3 to +3 and move it to the other side of the equation. (5b = 22 + 3)\n\n**Another Example**\n10a + 16 = 36. \nSubtract 16 from both sides and the result is: 10a = 20\nDivide both sides by 10    \nand the Answer is a = 2\nAlternatively, change +16 to -16 and move it to the other side of the equation. (10a = 36 - 16)\n\n**TIP** If both sides of the equation are multiplied or divided by the same number, both sides remain equal\n**Example**\n5 x Y = 30\n Divide both sides by 5 to get Y by itself.\nResults in Y = 30 ÷ 5\nSimplify: (Y = 30 ÷ 5)\nThe Answer is Y = 6\n\n Try to solve the following exercises:\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerViewB(exercises12_21: Array(
                            ExerciseBank12_21.shared.singleEquations[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
        
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct


#Preview {
    Tab17View(mathsTopic: "Maths")
}
