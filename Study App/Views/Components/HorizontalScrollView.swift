//
//  HorizontalScrollView.swift
//  Study App
//
//  Created by Sabal on 3/9/24.
//

import SwiftUI

struct HorizontalScrollView: View {
    var image: String
    var title: String
    var body: some View {
        
        VStack(alignment: .leading) {
            Image("\(image)")
                .resizable()
                .frame(width: 250, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(title)
                .foregroundStyle(Color("20color"))
        }
    }
}

#Preview {
    HorizontalScrollView(image: "mobileDevelopment", title: "App Development")
    
}
