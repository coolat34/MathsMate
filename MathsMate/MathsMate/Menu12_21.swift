//
//  Menu12-21.swift
//  MathsMate
//
//  Created by Chris Milne on 17/01/2026.
//

import SwiftUI

struct Menu12_21: View {
    let tabList = [
    Tabs(mathsTopic: "12: More Terminology", img: "tortoise",tag: 1),
    Tabs(mathsTopic: "13: Brackets", img: "tortoise",tag: 2),
    Tabs(mathsTopic: "14: Nested Brackets", img: "button.horizontal",tag: 3),
    Tabs(mathsTopic: "15: Multiplication", img: "figure.wave.circle",tag: 4),
    Tabs(mathsTopic: "16: Division", img: "checkmark.seal.fill",tag:  5),
    Tabs(mathsTopic: "17: Single Equations", img: "button.horizontal",tag: 6),
    Tabs(mathsTopic: "18: More Singles", img: "figure.wave.circle",tag: 7),
    Tabs(mathsTopic: "19: Simultaneous Intro", img: "figure.run.circle",tag: 8),
    Tabs(mathsTopic: "20: Substitution", img: "mic.square",tag: 9),
    Tabs(mathsTopic: "21: Elimination", img: "checkmark.seal.fill",tag: 10)
    

    ]
    
    @Environment(\.dismiss) var dismiss
    @State var ImgColors: [Color] = [.red, .blue,  .black]
    var body: some View {
        NavigationView {
            ZStack {
                // Background gradient
                LinearGradient(
                    colors: [Color(red: 0.35, green: 0.05, blue: 0.15), Color(red: 0.15, green: 0.25, blue: 0.75)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                List(tabList) { tab in
                    NavigationLink(destination: destinationView(tab.tag ?? 0)) {
                        HStack {
                            Image(systemName: tab.img)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(ImgColors.randomElement())
                                .padding(.top, 6)
                                .frame(width: 60, height: 24, alignment: .center)
                 
                               
                            Text(tab.mathsTopic)
                                .font(.system(size: 18, weight: .bold))
                                .frame(width: 200, height:24, alignment: .leading)
                    
                        }  /// HStack
                    } /// NavLink
                    .navigationTitle("Algebra Primer")
                    .navigationViewStyle(StackNavigationViewStyle())
                    .navigationBarBackButtonHidden(true)
                    .navigationBarTitleDisplayMode(.inline)   /// Reduce the size of the Text that appears at the top
                    .font(.system(size: 24, weight: .bold))
                } /// List
            } /// ZStack
            .toolbar(.hidden, for: .navigationBar)
            }  /// NavView
       
        
        
    }/// Body
        
    func destinationView(_ tag: Int) -> some View {
        switch tag {
        case 1: return AnyView(Tab16View(mathsTopic: tabList[tag-1].mathsTopic))
        case 2: return AnyView(Tab12View(mathsTopic: tabList[tag-1].mathsTopic))
        case 3: return AnyView(Tab13View(mathsTopic: tabList[tag-1].mathsTopic))
        case 4: return AnyView(Tab14View(mathsTopic: tabList[tag-1].mathsTopic))
        case 5: return AnyView(Tab15View(mathsTopic: tabList[tag-1].mathsTopic))
        case 6: return AnyView(Tab17View(mathsTopic: tabList[tag-1].mathsTopic))
        case 7: return AnyView(Tab18View(mathsTopic: tabList[tag-1].mathsTopic))
        case 8: return AnyView(Tab19View(mathsTopic: tabList[tag-1].mathsTopic))
        case 9: return AnyView(Tab20View(mathsTopic: tabList[tag-1].mathsTopic))
        case 10: return AnyView(Tab21View(mathsTopic: tabList[tag-1].mathsTopic))
        
        default: return AnyView(EmptyView())
        }  //// Switch

}
  
} /// struct

#Preview {
    Menu12_21()
}
