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
        TopView()
    }
}

#Preview {
    ContentView()
}
