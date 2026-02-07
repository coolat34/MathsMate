//
//  Tab5View.swift
//  MathsMate
//

import SwiftUI

struct Tab5View: View {

    let mathsTopic: String
    var body: some View {
        ScrollView {

            Text("**TIP** A **Product** is the result of multiplying 2 or more numbers together. \nSo, the product of 2 multiplied by 3 is 6.\n\n**TIP** The Product of equal numbers is called a **Power**\nSo, 3 x 3 is written as 3² and called  3 to the power of 2 or 3 squared, \n3 x 3 x 3 is written as 3³ and called 3 cubed, \nAnd so on.\nThe small number above each base number is called the **Exponent**\nIt tells us how many times the base number is multiplied by itself.\nSo 3² results in 9.\nAnd 3³ results in 27.\n\nFollowing on from that the reverse of a value squared is the square root of a value\n So the square root of 9 is 3 written as √9 = 3.\nThe square root of 100 is 10 because\n 10 x 10 = 100 written as √100 = 10")
                .font(.title2)
        }
        .navigationTitle(mathsTopic)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    Tab5View(mathsTopic: "Maths")
}
