//
//  ContentView.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI
struct barData: Identifiable {
    var id = UUID()
    var lable: String
    var gradientColors: [Color] = [.blue, .purple]
   
}
struct ContentView: View {
    @Environment(\.dismiss) var dismiss
    @State private var tabIndex: Int? = nil
    let tabList = [
        barData(lable: "(1) Algebra Terminology, Transform, Simplify, Powers,Fractions"),
        barData(lable: "(2) Algebra Brackets, Multiplication, Division, Equations"),
   
    ]
   
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
               
                VStack(spacing: 5) {
                    headerSection
                    ForEach(tabList.indices, id: \.self) { idx in
                      let tabIndex = idx
                        NavigationLink(
                            destination: destinationView(tabIndex),
                            label: {
                                ZStack {
                                    // Card background with gradient
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(
                                            LinearGradient(
                                                colors: tabList[idx]
                                                    .gradientColors,
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .shadow(color: tabList[idx].gradientColors[0].opacity(0.4), radius: tabIndex == idx ? 15 : 8, x: 0, y: 5)
                                    
                                    // Glossy overlay
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(
                                            LinearGradient(
                                                colors: [.white.opacity(0.2), .clear],
                                                startPoint: .topLeading,
                                                endPoint: .center
                                            )
                                        )
                                    
                                    HStack(spacing: 15) {
                                        //MARK:  Left side - Info
                                        VStack(alignment: .leading, spacing: 6) {
                 
                                            Text(tabList[idx].lable)
                                                .font(.system(size: 18, weight: .bold, design: .rounded))
                                                .foregroundColor(.white)
 
                                            
                                        } /// VStack
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 5)
                                        
                                        Spacer()
                                        
                                    } /// HStack
                                    .padding(20)
                                    
                                } /// ZStack
                                .frame(height: 110)
                                .scaleEffect(tabIndex == idx ? 0.98 : 1.0)
                                .animation(.spring(response: 0.3, dampingFraction: 0.7), value: tabIndex)
                            } /// lable
                            //         .buttonStyle(PlainButtonStyle())
                        )   /// NavLink
                    } /// For Each
                    .padding(.top, 15)
                } /// VStack 1
            } /// ZStack
            .toolbar(.hidden, for: .navigationBar)
        } /// NavView
        .navigationViewStyle(StackNavigationViewStyle())
    } /// Body
    
   
    
    // Break into computed properties
    var headerSection: some View {
        VStack(spacing: 15) {
            // Main title with glow effect
            
            VStack(spacing: 5) {
                Text("MathsMate\n")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.blue, Color(red: 1.0, green: 0.9, blue: 0.4)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .shadow(color: Color(red: 1.0, green: 0.8, blue: 0.2).opacity(0.5), radius: 10, x: 0, y: 0)
                Text(" MathsMate is an introductory mathematics app designed to build confidence in algebra step by step.\n 2 sets of menu-driven topics, each focusing on a key aspect of algebra. \n Clear explanations and worked examples. \n Interactive exercises, allowing users to test their understanding.\n A pop-up card that displays the solution. \n MathsMate is ideal for learners who want a structured, approachable introduction to algebra concepts.\n\n")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                
                
            }
            .padding(.horizontal)
        }
    } /// var Header
    
    func destinationView(_ tabIndex: Int) -> some View {
        switch tabIndex {
        case 0: return AnyView(Menu1_11())
        case 1: return AnyView(Menu12_21())
        case 2: return AnyView(EmptyView())
        default: return AnyView(EmptyView())
        } /// func
    } /// Switch
}  /// Struct

#Preview {
    ContentView()
}


