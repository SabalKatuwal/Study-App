//
//  BoxContentView.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import SwiftUI


struct BoxContentView: View {
    var primaryColor: Color
    var primaryTitle: String
    var secondaryColor: Color
    var secondaryIcon: String
    var secondaryIconHeight: Double
    
    var body: some View {
        ZStack{
            ContainerView()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 200, height: 280, alignment: .center)
                .shadow(color: .black, radius: 5)
                .rotationEffect(.degrees(90), anchor: .center)
        }
        
    }
}


#Preview {
    BoxContentView(primaryColor: Color("20color"), primaryTitle: "Physics", secondaryColor: .red, secondaryIcon: "person", secondaryIconHeight: 30)
}
