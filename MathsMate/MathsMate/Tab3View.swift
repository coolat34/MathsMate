//
//  Tab3View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab3View: View {
 @State private var showButton = false
    let mathsTopic: String
 var body: some View {

         ScrollView {
             Text("If you had a simple formula like A = L x B\n and you wanted to know what B was,\n Divide the whole equation by L, \nThat results in B = A ÷ L\nIf you wanted to know what L was\nDivide the whole equation by B and you get L = A ÷ B\n\n A useful technique for solving problems in maths and Algebra.\n\nNow, if A = 10 and L = 5 and B = 2\n\nA = L x B Substitute values for letters: 10 = 5 X 2\nB = A ÷ L Substitute values for letters: 2 = 10 ÷ 5\nL = A ÷ B Substitute values for letters: 5 = 10 ÷ 2\n\nTry to solve the following exercises. Click any question to see the answer").font(.title2)
             
             HStack(spacing: 1) {
                 Button(action: {
                     showButton = true
                 }) {
                     CustomButton(label: " See Exercises", width: 240, altColour: true)
                     
                 } /// Custom Button
                 .sheet(isPresented: $showButton) {
                     QuestionAnswerView(exercises1_11: Array(
                         ExerciseBank1_11.shared.transform[0..<5]), mathsTopic: mathsTopic)
                 } /// sheet
             } /// Hstack
             } /// Scroll

     .navigationTitle(mathsTopic)
     .navigationBarTitleDisplayMode(.inline)
                       } /// body
                   } /// struct

#Preview {
    Tab3View(mathsTopic: "Maths")
}
