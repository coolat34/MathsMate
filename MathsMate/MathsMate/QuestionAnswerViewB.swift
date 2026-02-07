//
//  QuestionAnswerViewB.swift
//  MathMate
//
//  Created by Chris Milne on 16/12/2025.
//

import SwiftUI

struct QuestionAnswerViewB: View {
    let exercises12_21: [Exercise12_21]
    let mathsTopic: String
    @State private var selectedExerciseB: Exercise12_21? = nil
    @Environment(\.dismiss) var dismiss
    @State var rowCount: Int = 0
    var body: some View {
        Text("\(mathsTopic): Click any question to see the Answer\n" )
    //    Text("Click any question to see the answer\n")
            .frame(maxWidth: .infinity, maxHeight: 25, alignment: .center)
            .font(.title3)
            .bold()
        
        ZStack {  // Wrap the view in a ZStack so the card can float above it}
            ScrollView {
                ForEach(exercises12_21.indices, id: \.self) { index in
                    let exercise = exercises12_21[index]
                    let rowCount = index
                    Text(exercise.question)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                        .background(rowCount.isMultiple(of: 2) ? Color(.systemGray6) : Color.white)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                                selectedExerciseB = exercise
                            } /// Animation
                            } /// onTap
                        } /// ForEach
                } /// ScrollView
            } /// ZStack
        Button(action: { dismiss() }) {
            CustomButton(label: "Return", width: 140, )
                .padding()
        }
        // MARK: - Overlay
            if let exercise = selectedExerciseB {
                AnswerOverlayB(exercise: exercise) {
                    withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                        selectedExerciseB = nil
                    } /// Animation
                } /// AnswerOverlay
                    } /// If

            } /// Body
        } /// Struct
        
        
        struct AnswerOverlayB: View {
            let exercise: Exercise12_21
            let dismiss: () -> Void
            
            var body: some View {
                ZStack {
                    // Dimmed background
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture { dismiss()
                        } /// onTap
                    
                    // Card
                    VStack(spacing: 8) {
                        Text("Answer")
                            .font(.headline)
                        
                        Text(exercise.ans1)
                        Text(exercise.ans2)
                        Text(exercise.ans3)
                        Text(exercise.ans4)
                        Text(exercise.ans5)
                        Text(exercise.ans6)
                        Text(exercise.ans7)
                        Text(exercise.ans8)
                        Text(exercise.ans9)
                        Text(exercise.ans10)
                        Text(exercise.ans11)
                        Text(exercise.ans12)
                            .font(.title2)
                            .bold()
                    } /// VStack
                    .frame(maxWidth: 450)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(.systemBackground))
                            .shadow(radius: 12)
                    )
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                } /// ZStack
            } /// Body
        } /// struct

