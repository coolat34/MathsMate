//
//  Menu1_11.swift
//  MathsMate
//
//  Created by Chris Milne on 17/01/2026.
//

import SwiftUI

struct Menu1_11: View {
    
    let tabList = [
    Tabs(mathsTopic: "1: Operators & Terms", img: "tortoise",tag: 1),
    Tabs(mathsTopic: "2: Order of Evaluation", img: "button.horizontal",tag: 2),
    Tabs(mathsTopic: "3: Transform", img: "figure.wave.circle",tag: 3),
    Tabs(mathsTopic: "4: Simplify & Substitute", img: "figure.run.circle",tag: 4),
    Tabs(mathsTopic: "5: Powers Intro", img: "mic.square",tag: 5),
    Tabs(mathsTopic: "6: Powers Multiply", img: "checkmark.seal.fill",tag: 6),
    Tabs(mathsTopic: "7: Powers Divide", img: "person.fill.questionmark",tag: 7),
    Tabs(mathsTopic: "8: Fractions Add", img: "flag.checkered.circle",tag: 8),
    Tabs(mathsTopic: "9: Fractions Subtract", img: "flag.checkered.circle",tag: 9),
    Tabs(mathsTopic: "10: Fractions Multiply", img: "flag.checkered.circle",tag: 10),
    Tabs(mathsTopic: "11: Fractions Divide", img: "flag.checkered.circle",tag: 11),
    

    ]
    
    @Environment(\.dismiss) var dismiss
    @State var TxtColors: [Color] = [.red, .blue, .black]
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
        case 1: return AnyView(Tab1View(mathsTopic: tabList[tag-1].mathsTopic))
        case 2: return AnyView(Tab2View(mathsTopic: tabList[tag-1].mathsTopic))
        case 3: return AnyView(Tab3View(mathsTopic: tabList[tag-1].mathsTopic))
        case 4: return AnyView(Tab4View(mathsTopic: tabList[tag-1].mathsTopic))
        case 5: return AnyView(Tab5View(mathsTopic: tabList[tag-1].mathsTopic))
        case 6: return AnyView(Tab6View(mathsTopic: tabList[tag-1].mathsTopic))
        case 7: return AnyView(Tab7View(mathsTopic: tabList[tag-1].mathsTopic))
        case 8: return AnyView(Tab8View(mathsTopic: tabList[tag-1].mathsTopic))
        case 9: return AnyView(Tab9View(mathsTopic: tabList[tag-1].mathsTopic))
        case 10: return AnyView(Tab10View(mathsTopic: tabList[tag-1].mathsTopic))
        case 11: return AnyView(Tab11View(mathsTopic: tabList[tag-1].mathsTopic))
       
        default: return AnyView(EmptyView())
        }  //// Switch

}
  
} /// struct


#Preview {
    Menu1_11()
}
