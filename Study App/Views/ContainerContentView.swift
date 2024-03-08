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
        ZStack{
            ContainerView(primaryColor: primaryColor, secondaryColor: secondaryColor)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black, radius: 5)
                .rotationEffect(.degrees(90), anchor: .center)
                
            
            
            HStack {
                VStack{
                    Image("study")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 45)
                        .foregroundColor(Color.gray)
                    
                    Text(primaryTitle)
                        .font(.body)
                        .foregroundColor(Color.primary)
                        .padding(.top, 8)
                }
                .offset(x: -22)
                
                Image(systemName: secondaryIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: CGFloat(secondaryIconHeight))
                    .foregroundColor(Color.white)
                    .offset(x: 58)
            }
            
            
        }
        .frame(width: 200, height: 280, alignment: .center)
    }
}


#Preview {
    ContainerContentView(primaryColor: Color("20color"), primaryTitle: "Chemistry", secondaryColor: .red, secondaryIcon: "flask", secondaryIconHeight: 30)
}
