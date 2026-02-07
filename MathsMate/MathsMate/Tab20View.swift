//
//  Tab20View.swift
//  MathsMate
//
//  Created by Chris Milne on 20/01/2026.
//

import SwiftUI

struct Tab20View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
        
             ScrollView {
                 
                 Text("**Substitution** is one of the most common methods for solving Simultaneous equations\nIsolate one variable at a time. Find the value for that isolated variable\nSubstitute that value into one of the equations to find the other variable.\n\n**Tip. Get rid of the fractions first if possible**\nLet's say the following equation is given:\n**a ÷ 2 - b = 2**\n\nTo solve this type of equation\n 1. Get rid of the fraction. Multiply the equation by 2 which results in **a -2b = 4**\n2. Isolate **a** : **a = 2b + 4**\n3. Apply the value of **a** to the equation which results in **(2b + 4) ÷ 2 - b = 2**\n4. Simplify that which results in **2b + 4 - 2b = 4**\n5. Simplify further: **b = 0**\n6. Apply the value of **b** to the equation\n **a = 2b + 4**\n Simplify **a = 2(0) + 4**. Results in **a = 4**\n So **a=4 and b=0**\n\n Try to solve the following exercises:\n").font(.title2)
                 HStack(spacing: 1) {
                     Button(action: {
                         showButton = true
                     }) {
                         CustomButton(label: " See Exercises", width: 240, altColour: true)
                         
                     } /// Custom Button
                     .sheet(isPresented: $showButton) {
                         QuestionAnswerViewB(exercises12_21: Array(
                             ExerciseBank12_21.shared.SimultaneousExtra[0..<5]), mathsTopic: mathsTopic)
                     } /// sheet
                 } /// Hstack
                 } /// Scroll
         
         .navigationTitle(mathsTopic)
         .navigationBarTitleDisplayMode(.inline)
                           } /// body
                       } /// struct


 #Preview {
     Tab20View(mathsTopic: "Maths")
 }
