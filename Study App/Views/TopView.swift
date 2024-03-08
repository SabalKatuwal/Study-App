//
//  TopView.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import SwiftUI

struct TopView: View {
    @EnvironmentObject var baseData: BaseViewModel
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
    //                //MARK: DRAWER MENU
    //                Button {
    //                    
    //                } label: {
    //                    Image(systemName: "lines.measurement.vertical")
    //                        .renderingMode(.template)
    //                        .resizable()
    //                        .aspectRatio(contentMode: .fit)
    //                        .frame(width: 25, height: 25)
    //                } // END DRAWER MENU
                    
                    
    //                //MARK: NOTIFY
    //                Button {
    //
    //                } label: {
    //                    Image(systemName: "bell")
    //                        .font(.title2)
    //                }
    //                // END NOTIFY ICON
                    
                    Spacer()

                    
                    //MARK: APP LOGO
                    Image("Logo")
                        .resizable()
                        .frame(width: 124, height: 54)
                        .offset(x: -25)
                    // END APP LOGO
                    
                    //MARK: SEARCH ICON
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                    } // END SEARCH ICON
                }
                .foregroundColor(.black)
            
            Text("Hello")
                .font(.title)
                .fontWeight(.light)
                .fontDesign(.monospaced)
            Text("Sabal")
                .font(.largeTitle)
                .fontDesign(.monospaced)
//                .fontWeight(.medium)
        }
        .padding()
            // END APP BAR
        
        
        
        
        
    }
}

#Preview {
    TopView()
}
