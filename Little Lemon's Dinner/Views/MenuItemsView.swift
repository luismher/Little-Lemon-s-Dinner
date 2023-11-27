//
//  MenuItemsView.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/16/23.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject private var showList = MenuViewViewModel()
    var body: some View {
            NavigationStack {
                ScrollView {
                    if showList.showFood { MenuItemView(ViewModel: MenuViewViewModel(), menuItems: showList.food, menuCategory: .a)}
                    if showList.showDrink {MenuItemView(ViewModel: MenuViewViewModel(), menuItems: showList.drink, menuCategory: .b)}
                    if showList.ShowDessert {MenuItemView(ViewModel: MenuViewViewModel(), menuItems: showList.dessert, menuCategory: .c) }
                }
                .onAppear(){
                    showList.updateMenuItems()
                }
                
                .navigationTitle("Menu")
                .navigationBarItems(trailing:
                                        Button(action: {
                    showList.isOpenedView.toggle()
                }, label: {
                    Image(systemName: "line.horizontal.3.circle")
                }).sheet(isPresented: $showList.isOpenedView) {
                            NavigationStack {
                                MenuItemsOptionView()
                                    .environmentObject(showList)
                                .toolbar {
                                    Button ("Done") {
                                        showList.updateMenuItems()
                                        showList.isOpenedView.toggle()
                            
                        }
                    }
                }
            })
        }
    }
}

#Preview {
    MenuItemsView()
}
