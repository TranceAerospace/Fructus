//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Mark Trance on 4/1/23.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
            
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
