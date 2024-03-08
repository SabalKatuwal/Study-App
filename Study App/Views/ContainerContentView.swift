//
//  ContainerContentView.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import SwiftUI

struct ContainerContentView: View {
    var primaryColor: Color
    var primaryTitle: String
    var secondaryColor: Color
    var secondaryIcon: String
    var secondaryIconHeight: Double
    
    var body: some View {
        Button{
            
        } label: {
            
            ZStack{
                ContainerView(primaryColor: primaryColor, secondaryColor: secondaryColor)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .rotationEffect(.degrees(90), anchor: .center)
                    
                
                
                HStack {
                    VStack{
                        Image("study")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 45)
                            .foregroundColor(Color.white)
                            .padding(.top, 8)
                        
                        Text(primaryTitle)
                            .font(.body)
                            .foregroundColor(Color.primary)
                            
                    }
    //                .offset(x: -22)
                    Image("\(secondaryIcon)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: CGFloat(secondaryIconHeight))
                        .foregroundColor(Color.black)
                        .offset(x: 30)
                }
                .offset(y: -35)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .scaledToFit()

        }

    }
}


#Preview {
    ContainerContentView(primaryColor: Color("20color"), primaryTitle: "Chemistry", secondaryColor: .red, secondaryIcon: "math", secondaryIconHeight: 30)
}
