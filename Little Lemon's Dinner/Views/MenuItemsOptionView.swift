//
//  MenuItemsOptionView.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/16/23.
//

import SwiftUI


struct MenuItemsOptionView: View {
    @State private var menuItemView = MenuItemsView()
    var body: some View {
        NavigationStack {
                    
                List {
                    Section (header: Text ("Selected Categories")){
                        Text ("Food")
                        Text ("Pasta")
                }
            }
        }
    }
}

#Preview {
    MenuItemsOptionView()
}
