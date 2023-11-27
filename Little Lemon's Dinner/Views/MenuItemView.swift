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
                ForEach(menuItems) { menuItem in
                    NavigationLink(destination: MenuItemDetailsView (menuItem: menuItem)){
                        VStack {
                            Rectangle()
                            Text(menuItem.title)
                        }
                        .frame(height:120)
                        .foregroundColor(.black)
                    }
                }
            }
        }.padding()
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MenuViewViewModel()
        MenuItemView(ViewModel: MenuViewViewModel(), menuItems: viewModel.dessert, menuCategory: .c)
    }
}

