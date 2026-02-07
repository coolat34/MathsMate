//
//  Tab9View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab9View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
      
            ScrollView {
                Text("**TIP**\nTo **SUBTRACT** two or more fractions from each other\n**1st** , if possible, simplify the fractions.\n**2nd** find the least common denominator (LCD).The number that either number below the line (Denominator) is a factor of. The smallest number that either denominators can divide into\n**3rd** Divide the LCD by the 1st Denominator and Multiply the result by the 1st Numerator.\n**4th** Repeat for the 2nd fraction.\n**5th** Now Subtract the 2nd result from the 1st result.\n**6th** Reduce the fraction to its smallest amount.(Simplify)\n\n**For example**\nSubtract these two fractions from each other\n(4÷7) - (2÷6)\n**1st** We can Simplify and get 4÷7 - 1÷3\n**2nd** Find the LCD. The number that either Denominator is a factor of.\nIn this case the smallest number that either denominators 2 and 3 can divide into is 21\n**3rd** Divide the LCD by the 1st Denominator and Multiply the result by the 1st Numerator.\nSo, 21÷7 = 3 and multiplied by 1st numerator (3x4 = 12)\n**4th** Repeat for the 2nd fraction.\nSo, 21÷3 = 7 and multiplied by 2nd numerator (7x1 = 7)\n**5th** Now Subtract the 2nd result from the 1st result. 12 - 7 = 5\n**6th** Simplify if possible =  5÷21\nTry to solve the following exercises\n").font(.title2)
               
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises1_11: Array(
                            ExerciseBank1_11.shared.fractSub[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
     
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct

#Preview {
    Tab9View(mathsTopic: "Maths")
}
