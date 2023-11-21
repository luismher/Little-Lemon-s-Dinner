//
//  MenuItemsView.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/16/23.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var showList = false
    var body: some View {
        NavigationView {
            NavigationStack {
                ScrollView{
                }
                .navigationTitle("Menu")
                .navigationBarItems(trailing:
                                        Button(action: {
                    self.showList.toggle()
                }, label: {
                    Image(systemName: "line.horizontal.3.circle")
                    }).sheet(isPresented: $showList) {
                            NavigationStack {
                                MenuItemsOptionView()
                                .toolbar {
                                    Button ("Done") {
                                        showList.toggle()
                                    }
                                    
                                }

                            }
                        
                })
            }
        }
    }
}

#Preview {
    MenuItemsView()
}
