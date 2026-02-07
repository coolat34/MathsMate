//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab15View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
       
            ScrollView {
                
                Text("Whether you are Dividing numbers or variables, \nit's important to understand the rules of **like** and **unlike** signs.\n\n**TIP**\n **(A)** **Like** signs result in **PLUS**\n**(B)** **Unlike** signs result in **MINUS**\n**(C)** Change the divide to multiply and Flip the sign\n\n**(A) Like Numbers**\n(+18) ÷ (+3) = (+9)\n(-9) ÷ (-3) = (+3) Minus **÷** Minus = **+**\n**Like Variables**\n(+A) ÷ (+B) = A÷B\n(-X) ÷ (-Y) = X÷Y Minus **÷** Minus = **+**\n**(B) Unlike Numbers**\n(+18) ÷ (-3) = (-6)\n(-12) ÷ (+3) = (-4)\n**Unlike variables**\n(+A) ÷ (-B) = -A÷B\n(-X) ÷ (+Y) = -X÷Y\n\n Try to solve the following exercises:\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerViewB(exercises12_21: Array(
                            ExerciseBank12_21.shared.Division[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
          
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                          } /// body
                      } /// struct

 

