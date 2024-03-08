//
//  BaseView.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import SwiftUI

struct BaseView: View {
    @StateObject var baseData = BaseViewModel()
    
    // MARK: - HIDE TAB BAR
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView(selection: $baseData.currentTab) {
            ContentView()
                .environmentObject(baseData)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Home)
            Text("heart")
                .tag(Tab.Heart)
            Text("Clipboard")
                .tag(Tab.ClipBoard)
            Text("Person")
                .tag(Tab.Person)
        }
        .overlay(
            // MARK: - CUSTOM TAB BAR
            HStack(spacing: 0) {
                // MARK: - TAB BUTTON
                TabButton(Tab: .Home)
                TabButton(Tab: .Heart)
                    .offset(x: -10)
                
                // MARK: CURVED BUTTON
                Button {
                    
                } label: {
                    Image(systemName: "book")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                        .offset(x: -1)
                        .padding(18)
                        .foregroundColor(Color.white)
                        .background(Color("20color"))
                        .clipShape(Circle())
                    //MAR: - BUTTON SHADOWS
                        .shadow(color: Color.black.opacity(0.04), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.black.opacity(0.04), radius: 5, x: -5, y: -5)
                }
                .offset(y: -30)
                
                TabButton(Tab: .ClipBoard)
                    .offset(x: 10)
                TabButton(Tab: .Person)
            }
            .background(
                Color.white
                    .clipShape(CustomCurveShape())
                    //MARK: - SHADOW
                    .shadow(color: Color.black.opacity(0.04), radius: 5, x: -5, y: -5)
                    .ignoresSafeArea(.container, edges: .bottom)
            )
            
            , alignment: .bottom
        )
    }
    @ViewBuilder
    func TabButton(Tab: Tab)-> some View {
        Button {
            withAnimation{
                baseData.currentTab = Tab
            }
        } label: {
            Image(Tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(baseData.currentTab == Tab ? Color("20color") : Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    BaseView()
}
