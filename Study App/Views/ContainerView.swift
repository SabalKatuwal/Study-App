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
        ZStack(alignment: .topLeading){
            Rectangle()
                .fill(primaryColor)
            Rectangle()
                .fill(secondaryColor)
                .frame(width: .infinity , height: 50)
            Rectangle()
                .fill(secondaryColor)
                .frame(width: .infinity , height: 100)
                .clipShape(Ellipse())
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

#Preview {
    ContainerView(primaryColor: Color("20color"), secondaryColor: Color.teal.opacity(20))
}
