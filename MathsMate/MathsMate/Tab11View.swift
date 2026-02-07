//
//  Tab11View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab11View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
     
            ScrollView {
                
                Text("**TIP** To DIVIDE one fraction by another, there is an easy shortcut method.\n**1st** If possible, simplify the fractions. \n**2nd** Apply the shortcut by performing the following steps:\nChange the Divide sign to a Multiply sign and flip the second fraction upside down.\n**3rd** Now you can Multiply the values above the line and below the line\n**4th** Reduce the fraction to its smallest amount.\n\n**For Example**\n(3÷8) ÷ 2÷6) \n**1st** We can Simplify the second fraction and get (3÷8) ÷ 1÷3) \n**2nd** Apply the shortcut, Change the Divide sign to a Multiply sign and flip the second fraction upside down. (3÷8) x 3÷1)\n**3rd** Multiply the values above the line (3 x 3 = 9) and below the line (8 x 1 = 8)\n**4th** Simplify if possible (9÷8)\n\nTry to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises1_11: Array(
                            ExerciseBank1_11.shared.fractDiv[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
         
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct
#Preview {
    Tab11View(mathsTopic: "Maths")
}
