//
//  Tab10View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab10View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
        
            ScrollView {
                
                Text("**TIP** \nTo **MULTIPLY** two or more fractions together, \n**1st** , If possible, simplify the fractions. \n**2nd** Multiply the values above the line. \n**3rd** Multiply the values below the line.\n**4th** Reduce the fraction to its smallest amount.\n\n**For Example**\n(3÷8) x 2÷6) \n**1st** We can Simplify the second fraction and get (3÷8 x 1÷3) \n**2nd** Multiply the numbers above the line. (3 x 1 = 3) \n**3rd** Multiply the numbers below the line.(8x3 = 24)\n**4th** Reduce the fraction to its smallest amount.(3÷24) = (1÷8)\nTry to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises1_11: Array(
                            ExerciseBank1_11.shared.fractMul[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
         
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct
#Preview {
    Tab10View(mathsTopic: "Maths")
}
