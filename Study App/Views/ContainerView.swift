//
//  ContainerView.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import SwiftUI

struct ContainerView: View {
    var primaryColor: Color
    var secondaryColor: Color
    var body: some View {
        
        GeometryReader{ geometry in
        
            ZStack(alignment: .topLeading){
                Rectangle()
                    .fill(primaryColor)
                Rectangle()
                    .fill(secondaryColor)
                    .frame(width: .infinity , height: 25)
                Rectangle()
                    .fill(secondaryColor)
                    .frame(width: .infinity , height: 60)
                    .clipShape(Ellipse())
                
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: geometry.size.width * 2/3)
        }
        .scaledToFit()
        
    }
}

#Preview {
    ContainerView(primaryColor: Color("20color"), secondaryColor: Color.teal.opacity(20))
}
