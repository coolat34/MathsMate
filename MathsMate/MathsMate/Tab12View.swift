//
//  Tab12View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab12View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
      
            ScrollView {
                
                Text("**Brackets** are used to group together parts of an expression or equation so that you can work on them separately.\nTwo important rules apply here.\n**(1)** When a plus (**+**) sign is in front of the brackets, the signs in the brackets are unchanged\n**(2)** When a minus (**-**) sign  is in front, the signs in the brackets are changed to plus (**+**) signs\nConsider these 4 examples:\n**(1)** 1 + (2 + 3)\n**(2)** 1 + (2 - 3)\n**(3)** 1 -(2 + 3)\n**(4)** 1 - (2 - 3)\n\nApply the rules from BEDMAS, i.e. Evaluate values in Brackets first and:\n The result of  the evaluations result in\n\n**(1)** 1 + 2 + 3  = 6 \n**(2)** 1 + 2 - 3 = 0 \n**(3)** 1 - 2 -3 = -4 \n**(4)** 1 - 2 + 3 = 2\n\nTry to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerViewB(exercises12_21: Array(
                            ExerciseBank12_21.shared.brackets[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
        
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct

#Preview {
    Tab12View(mathsTopic: "Maths")
}
