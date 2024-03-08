//
//  BaseViewModel.swift
//  Study App
//
//  Created by Sabal on 3/8/24.
//

import Foundation
import SwiftUI

class BaseViewModel: ObservableObject {
    // MARK: - TAB BAR
    @Published var currentTab: Tab = .Home
    
    @Published var homeTab = "BhagwatGita"
    
}

// MARK: - TAB ITEM CASE
enum Tab: String {
    case Home = "home"
    case Heart = "heart"
    case ClipBoard = "cart"
    case Person = "person"
}
