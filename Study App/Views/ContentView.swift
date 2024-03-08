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
        ScrollView{
            TopView()
            
            VStack {
                HStack(spacing: 15){
                    ContainerContentView(primaryColor: Color("containerColor1.2"), primaryTitle: "Chem", secondaryColor: Color("containerColor1.1"), secondaryIcon: "microscope", secondaryIconHeight: 25)
                        .shadow(color: Color("containerColor1.1").opacity(0.4), radius: 20, x: 0, y: 5)
                    
                    ContainerContentView(primaryColor: Color("containerColor2.1"), primaryTitle: "Maths", secondaryColor: Color("containerColor2.2"), secondaryIcon: "math", secondaryIconHeight: 25)
                        .shadow(color: Color("containerColor2.1").opacity(0.6), radius: 20, x: 0, y: 5)
                }
                .padding()
                
                
                HStack(spacing: -1){
                    ContainerContentView(primaryColor: Color("containerColor2.2"), primaryTitle: "Physics", secondaryColor: Color("containerColor2.1"), secondaryIcon: "flask", secondaryIconHeight: 25)
                        .shadow(color: Color("containerColor2.1").opacity(0.6), radius: 20, x: 0, y: 5)
                        .offset(x: 4)
                    
                    ContainerContentView(primaryColor: Color("containerColor1.1"), primaryTitle: "Biology", secondaryColor: Color("containerColor1.2"), secondaryIcon: "dna", secondaryIconHeight: 25)
                        .shadow(color: Color("containerColor1.1").opacity(0.4), radius: 20, x: 0, y: 5)
                        .offset(x: -4)
                }
                .padding(.top, -75)
            }
            .offset(y: -32)
            
            //MARK: POPULAR COURSES
            VStack(alignment: .leading){
                
                HStack(spacing: 0) {
                    Text("Popular")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(" Courses")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("20color"))
                }
                ScrollView(.horizontal) {
                    HStack {
                        HorizontalScrollView(image: "ioeEntrance", title: "IOE Entrance Peparation")
                        
                        HorizontalScrollView(image: "mobileDevelopment", title: "App Development Bootcamp")
                    }
                    
                }
                .scrollIndicators(.hidden)
            }
            .padding(.horizontal)
            .offset(y: -60)
            
            
            
            //END OF POPULAR COURSES
        
    
            Spacer()
        }
        
        
    }
}

#Preview {
    ContentView()
}
