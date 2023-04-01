    //
    //  StartButtonView.swift
    //  Fructus
    //
    //  Created by Mark Trance on 4/1/23.
    //

import SwiftUI

struct StartButtonView: View {
        // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
        // MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
        
    }
}


    // MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
