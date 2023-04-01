//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Mark Trance on 4/1/23.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Properties
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
            
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
