//
//  ContentView.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @EnvironmentObject var baseData: BaseViewModel
    @State var currentSlider: Int = 0
    
    var body: some View {
        ScrollView {
            HStack {
                //MARK: DRAWER MENU
                Button {
                    
                } label: {
                    Image(systemName: "lines.measurement.vertical")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                } // END DRAWER MENU
                
                Spacer()
                
                //MARK: NOTIFY
                Button {
                    
                } label: {
                    Image(systemName: "bell")
                        .font(.title2)
                }
                // END NOTIFY ICON
                
                //MARK: SEARCH ICON
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                } // END SEARCH ICON
                
            }
            .foregroundColor(.black)
            .overlay(
                Image("Logo")
                    .resizable()
                    .frame(width: 124, height: 54)
                    .offset(y: 4)
                
            )
            // END APP BAR
        }
        .padding()
        //MARK - APP BAR
        
        
        
        
    }
}

#Preview {
    ContentView()
}
