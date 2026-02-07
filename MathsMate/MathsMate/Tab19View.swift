//
//  Tab19View.swift
//  MathsMate
//
//  Created by Chris Milne on 20/01/2026.
//

import SwiftUI

struct Tab19View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
        
             ScrollView {
                 
                 Text("Given, that a Single equation deals with a Single variable, Simultaneous equations deal with two or more variables.\nSuppose you are told that **a + b = 12**\n You would not be able to solve this equation for both **a** and **b**\n unless you had more information. \nBut if you had a supporting equation: **b = 2a**,\n then you could find the values for both **a** and **b**.\nTo find the values for **a** and **b** given the following equations then:\n**a + b = 12**\n**b = 2a**\n\n**(1)** substitute **b** for **2a** in the 1st equation. Result **a + 2a = 12**\n**(2)** combine **like** terms which results in **3a = 12**\n**(3)** divide both sides by **3** which results in **a = 4**\n**(4)** Now that you know the value of **a**, substitute it back into the **b = 2a** equation to find the value of **b**\n**(5)** Substitute **4** for **a** in the 2nd equation. Results in **b = 2x4**\n**(6)** Simplify which results in **b = 8**\n Now you have a solution for two equations Simultaneously **a=4** and **b=8**\n Two equations (Simultaneous) that find the value of two variables.\n\n Try to solve the following exercises:\n").font(.title2)
                 HStack(spacing: 1) {
                     Button(action: {
                         showButton = true
                     }) {
                         CustomButton(label: " See Exercises", width: 240, altColour: true)
                         
                     } /// Custom Button
                     .sheet(isPresented: $showButton) {
                         QuestionAnswerViewB(exercises12_21: Array(
                             ExerciseBank12_21.shared.SimultaneousIntro[0..<5]), mathsTopic: mathsTopic)
                     } /// sheet
                 } /// Hstack
                 } /// Scroll
         
         .navigationTitle("\(mathsTopic) - Fractions")
         .navigationBarTitleDisplayMode(.inline)
                           } /// body
                       } /// struct


 #Preview {
     Tab19View(mathsTopic: "Maths")
 }
