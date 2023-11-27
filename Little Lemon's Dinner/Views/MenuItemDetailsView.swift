//
//  MenuItemDetailsView.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/26/23.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    var body: some View {
        NavigationStack{
                Image("Little Lemon logo")
                    .resizable(resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .padding()
            if menuItem.price > 0 {
                Text("Price:")
                    .font(.title2)
                    .bold()
                Text(String(format: "%.2f", menuItem.price))
            }
            Spacer()
            Spacer()
            
            if menuItem.ordersCount > 0 {
                Text("Ordered:")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(menuItem.ordersCount)")
                    
            }
            Spacer()
            Spacer()
            
            if menuItem.ingridient.count > 0 {
                Text("Ingridients:")
                    .font(.title2)
                    .fontWeight(.bold)
                ForEach (menuItem.ingridient, id: \.self){
                    Text($0.rawValue)
                }
            }
        }
        .navigationTitle(menuItem.title)
        .padding()
    }
}

#Preview {
    MenuItemDetailsView(menuItem: MenuItem(price: 10, title: "Food 8", menuCategory: .a, ordersCount: 20, ingridient: [.a,.c,.b]))
}
