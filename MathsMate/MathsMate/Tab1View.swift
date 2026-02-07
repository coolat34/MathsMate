//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Operators: Identifiable {
let id: Int
var operatorSign: String
var job: String
}

struct TermA: Identifiable {
let id =  UUID()
var terminology: String
var meaning: String
}
struct Tab1View: View {
var opArray = [
Operators(id:1, operatorSign: "+", job: "Add"),
Operators(id:2, operatorSign: "-", job: "Subtract"),
Operators(id:3, operatorSign: "x", job: "Multiply"),
Operators(id:4, operatorSign: "÷", job: "Divide"),
Operators(id:5, operatorSign: "=", job: "Equals"),
Operators(id:6, operatorSign: "()", job: "Brackets"),
Operators(id:7, operatorSign: "^", job: "Exponent"),
Operators(id:8, operatorSign: "√", job: "Square root"),
Operators(id:9, operatorSign: "≠", job: "Not equal"),
Operators(id:10, operatorSign: "<", job: "less than"),
Operators(id:11, operatorSign: ">", job: "Greater than"),
Operators(id:12, operatorSign: "≤", job: "Less than or equal"),
Operators(id:13, operatorSign: "≥", job: "Greater than or equal")
]
    var termArray = [
    TermA(terminology: "Variable", meaning: "A symbol whose value can change"),
    TermA(terminology: "Constant", meaning: "Fixed number"),
    TermA(terminology: "Term", meaning: "A part of a bigger expression"),
    TermA(terminology: "Like", meaning: "Terms that have the same variable part"),
    TermA(terminology: "Coefficient", meaning: "A number with a variable (e.g.4 in 4a)"),
    TermA(terminology: "Power", meaning: "An exponent - e.g x³ (x is raised to the Power of 3)")
    ]
let mathsTopic: String
var body: some View {
ScrollView {


Text("**Operators:** perform calculations on numbers or variables. \nThese are the common ones used in maths.\n")
                .font(.title2)
Grid(alignment: .leading) {
    GridRow {
        Text("Operator").bold()
        Text("Meaning").bold()
    } /// Gridrow

    ForEach(opArray) { item in
        GridRow {
            Text(item.operatorSign)
            Text(item.job)
        } /// For Each
    } /// GridRow
} /// Grid
    ///
    Text("\n**Terminology** Usually big words that explain the function of a maths operation.\n")
                    .font(.title2)
    Grid(alignment: .leading) {
        GridRow {
            Text("Terminology").bold()
            Text("Meaning").bold()
        } /// Gridrow

        ForEach(termArray) { item in
            GridRow {
                Text(item.terminology)
                Text(item.meaning)
            } /// For Each
        } /// GridRow
    } /// Grid
.padding()
        } /// ScrollView

.navigationTitle(mathsTopic)
.navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Tab1View(mathsTopic: "Maths")
}
