//
//  Tab16View.swift
//  MathsMate
//
//  Created by Chris Milne on 02/01/2026.
//

import SwiftUI

struct TermB: Identifiable {
let id =  UUID()
var terminology: String
var meaning: String
}

struct Tab16View: View {
    @State private var showButton = false
    let mathsTopic: String
    var termArray = [
    TermB(terminology: "Root", meaning: "Opposite of Power. e.g. √4 = 2 (square Root of 4)"),
    TermB(terminology: "Exponent", meaning: "Power - Repeated multiplication"),
    TermB(terminology: "Factorise", meaning: "Rewrite an expression as a product of factors"),
    TermB(terminology: "Coefficient", meaning: "A number with a variable (e.g.4 in 4a)"),
    TermB(terminology: "Simultaneous", meaning: "Two equations solved together"),
    TermB(terminology: "Quadratic", meaning: "Multiple equations solved together")
   
    ]
    var body: some View {
      
            ScrollView {
                
                Text("\n**Terminology** Usually big words that explain the function of a maths operation.\n").font(.title2)
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
                          } /// body
                      } /// struct

#Preview {
    Tab16View(mathsTopic: "Maths")
}
