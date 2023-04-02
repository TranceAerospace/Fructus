    //
    //  SettingsView.swift
    //  Fructus
    //
    //  Created by Mark Trance on 4/2/23.
    //

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox {
                        
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including postassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                        
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }

                    // MARK: - Section 2
                    
                    // MARK: - Section 3
                    
                } // VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                                .fontWeight(.bold)
                        }
                )
                .padding()
            } //Scroll
        } // NavView
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
