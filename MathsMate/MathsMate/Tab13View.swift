//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab13View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
        
            ScrollView {
                
                Text("**TIP** \nIf an expression within a set of brackets is within another set of brackets, \nit is called a **Nested bracket** expression.\nYou should work on them separately. Evaluate the values within each set of brackets before moving on.\nIn addition to the standard brackets (),use different brackets like {} or [] to make sense of the whole expression.\n\n**For Example:**\n\n2{3a + 5(b + c)} \nEvaluate values in the second brackets and get 2{3a + 5b + 5c} \nNow multiply the values in the brackets by 2 = 6a + 10b + 10c\nIf you didn't have the outer brackets then the expression would be interpreted as\n 6a + 5b + 5c which is wrong.\n\n **Another Example:** \n\n 3{3a - 2(a - b)} \n= 3{3a - 2a + 2b} \n = 3{a + 2b} \n= 3a + 6b\n\nTry to solve the following exercises").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerViewB(exercises12_21: Array(
                            ExerciseBank12_21.shared.bracketsNested[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
          
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct
#Preview {
    Tab13View(mathsTopic: "Maths")
}
