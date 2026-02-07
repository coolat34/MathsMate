//
//  Tab18View.swift
//  MathsMate
//
//  Created by Chris Milne on 20/01/2026.
//

import SwiftUI

struct Tab18View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
        
             ScrollView {
                 
                 Text("Still using a single variable but slightly more complicated equations.\n\n**For Example:**\n\n (2b + 5) + (2b + 3) + (2b + 1) = 81\nAdd the **Like** terms which result in 6b + 9 = 81\nSubtract 9 from both side. Results: 6b = 72\nDivide both sides by 6:\nResult b = 12\n\nYou can now appply b = 12 to the original equation:\n(2b + 5) + (2b + 3) + (2b + 1) = 81\nBecomes:\n(2x12+5) + (2x12+3) + (2x12+1) = 81\nResolve and Simplify:\n(29) + (27) + (25) = 81\n\n Try to solve the following exercises:\n").font(.title2)
                 HStack(spacing: 1) {
                     Button(action: {
                         showButton = true
                     }) {
                         CustomButton(label: " See Exercises", width: 240, altColour: true)
                         
                     } /// Custom Button
                     .sheet(isPresented: $showButton) {
                         QuestionAnswerViewB(exercises12_21: Array(
                             ExerciseBank12_21.shared.moreSingles[0..<5]), mathsTopic: mathsTopic)
                     } /// sheet
                 } /// Hstack
                 } /// Scroll
         
         .navigationTitle(mathsTopic)
         .navigationBarTitleDisplayMode(.inline)
                           } /// body
                       } /// struct


 #Preview {
     Tab18View(mathsTopic: "Maths")
 }
