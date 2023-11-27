//
//  MenuItemView.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/25/23.
//

import SwiftUI

struct MenuItemView: View {
    
    @EnvironmentObject var ViewModel: MenuViewViewModel
    var menuItems: [MenuItem]
    var menuCategory: MenuCategory
    
    init(ViewModel: MenuViewViewModel, menuItems: [MenuItem], menuCategory: MenuCategory) {
        self.menuItems = menuItems
        self.menuCategory = menuCategory
    }
    
    private var columnsGrid = [ GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    
    
 
    var body: some View {
        VStack{
            HStack {
                Text(menuCategory.rawValue)
                    .font(.title)
                    .fontWeight(.bold)
                    Spacer()
            }
            LazyVGrid (columns: columnsGrid){
                ForEach(menuItems) { item in
                    NavigationLink(destination: MenuItemDetailsView, label: <#T##() -> View#>)
                }
            }
        }
    }
}

#Preview {
        let ViewModel = MenuViewViewModel()
    MenuItemView(ViewModel: MenuViewViewModel(), menuItems: ViewModel.food, menuCategory: .a)
}
