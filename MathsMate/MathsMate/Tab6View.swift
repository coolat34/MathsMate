//
//  Tab6View.swift
//  MathsMate
//

import SwiftUI

struct Tab6View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
     
        ScrollView {

            Text("**TIP**\nThe **Powers** of a number or variable can be multiplied by adding the **Exponents**\nFor example.If we have **(a x a) X (b x b x b)**\nThat can be simplified to **a² x b³**\nIf we want to multiply **a² x a³**, we just add the Exponents and get **a⁵**\n\n***Power of a product***\nLook at this simplification\n(a x a) X (b x b)\nSimplified = (ab) X (ab)\nSimplified again = a²b²\nSimplified further = (ab)²\n\nNow you try\nif x = 3 and y = 2.\n Put these values into the equations and solve.\n\n").font(.title2)
            
            HStack(spacing: 1) {
                Button(action: {
                    showButton = true
                }) {
                    CustomButton(label: " See Exercises\n\nRemember x=3 and y=2", width: 240, altColour: true)
                    
                } /// Custom Button
                .sheet(isPresented: $showButton) {
                    QuestionAnswerView(exercises1_11: Array(
                        ExerciseBank1_11.shared.powerMultiply[0..<5]), mathsTopic: mathsTopic)
                } /// sheet
            } /// Hstack
            } /// Scroll
   
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                      } /// body
                  } /// struct

#Preview {
    Tab6View(mathsTopic: "Maths")
}
