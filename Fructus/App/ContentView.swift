//
//  ContentView.swift
//  Fructus
//
//  Created by Mark Trance on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                  
                }
            }
            .listStyle(.inset)
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } // Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
