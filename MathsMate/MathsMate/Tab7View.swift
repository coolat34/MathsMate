//
//  Tab7View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab7View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
       
        ScrollView {
            Text("**TIP**\nThe Powers of a number/variable can be **Divided** by subtracting the **Exponents**\n\n**Example** \n**25a⁵ ÷ 5a³**\n\nSubtract the Exponents 3 from 5 = 2\nThus 25a⁵ ÷ 5a³ = 5a²\n\nTry to solve the following exercises. Click any question to see the answer").font(.title2)
            
            HStack(spacing: 1) {
                Button(action: {
                    showButton = true
                }) {
                    CustomButton(label: " See Exercises", width: 240, altColour: true)
                    
                } /// Custom Button
                .sheet(isPresented: $showButton) {
                    QuestionAnswerView(exercises1_11: Array(
                        ExerciseBank1_11.shared.powerDivide[0..<5]), mathsTopic: mathsTopic)
                } /// sheet
            } /// Hstack
            } /// Scroll
      
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
                      } /// body
                  } /// struct

#Preview {
    Tab7View(mathsTopic: "Maths")
}
