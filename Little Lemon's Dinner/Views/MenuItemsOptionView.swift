//
//  MenuItemsOptionView.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/16/23.
//

import SwiftUI


struct MenuItemsOptionView: View {
    @EnvironmentObject var menuItemView: MenuViewViewModel
    var body: some View {
        NavigationStack {
                    
                List {
                    Section ("Selected Categories"){
                        Toggle (MenuCategory.a.rawValue, isOn: $menuItemView.showFood)
                        Toggle (MenuCategory.b.rawValue, isOn: $menuItemView.showDrink)
                        Toggle (MenuCategory.c.rawValue, isOn: $menuItemView.ShowDessert)
                }
                    Section ( "Order" ){
                        Picker("Sort By", selection: $menuItemView.sortBy) {
                            ForEach (SortBy.allCases, id: \.self){
                                category in Text(category.rawValue)
                                    .tag(category)
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    MenuItemsOptionView()
        .environmentObject(MenuViewViewModel())
}
