//
//  MenuViewViewModel.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/24/23.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foods: [MenuItem] = [
    MenuItem(price: 20, title: "Food 4", menuCategory: .a, ordersCount: 4, ingridient: [.a, .d, .e,]),
    MenuItem(price: 18, title: "Food 1", menuCategory: .a, ordersCount: 2, ingridient: [.e, .a]),
    MenuItem(price: 18, title: "Food 12", menuCategory: .a, ordersCount: 6, ingridient: [.e, .c, .d]),
    MenuItem(price: 14, title: "Food 6", menuCategory: .a, ordersCount: 5, ingridient: [.c, .a, .b]),
    MenuItem(price: 15.5, title: "Food 5", menuCategory: .a, ordersCount: 8, ingridient: [.e, .d]),
    MenuItem(price: 19.8, title: "Food 2", menuCategory: .a, ordersCount: 3, ingridient: [.a,.d,.e]),
    MenuItem(price: 15.3, title: "Food 3", menuCategory: .a, ordersCount: 9, ingridient: [.c, .a]),
    MenuItem(price: 9.8, title: "Food 8", menuCategory: .a, ordersCount: 7, ingridient: [.e, .d]),
    MenuItem(price: 12.5, title: "Food 10", menuCategory: .a, ordersCount: 8, ingridient: [.c, .b, .a]),
    MenuItem(price: 16.5, title: "Food 7", menuCategory: .a, ordersCount: 7, ingridient: [.c, .a, .b]),
    MenuItem(price: 17.7, title: "Food 11", menuCategory: .a, ordersCount: 6, ingridient: [.e, .a, .e]),
    MenuItem(price: 15, title: "Food 9", menuCategory: .a, ordersCount: 5, ingridient: [.c, .a,.b])
    ]
    
    @Published var drinks: [MenuItem] = [
    MenuItem(price: 4, title: "Drink 4", menuCategory: .b, ordersCount: 6, ingridient: []),
    MenuItem(price: 5, title: "Drink 6", menuCategory: .b, ordersCount: 4, ingridient: []),
    MenuItem(price: 5.5, title: "Drink 3", menuCategory: .b, ordersCount: 3, ingridient: []),
    MenuItem(price: 4.5, title: "Drink 1", menuCategory: .b, ordersCount: 5, ingridient: []),
    MenuItem(price: 6.6, title: "Drink 5", menuCategory: .b, ordersCount: 5, ingridient: []),
    MenuItem(price: 7.8, title: "Drink 8", menuCategory: .b, ordersCount: 3, ingridient: []),
    MenuItem(price: 5.3, title: "Drink 2", menuCategory: .b, ordersCount: 4, ingridient: []),
    MenuItem(price: 6.8, title: "Drink 7", menuCategory: .b, ordersCount: 5, ingridient: [])
    ]
    
    @Published var desserts: [MenuItem] = [
        MenuItem(price: 10, title: "Dessert 3", menuCategory: .c, ordersCount: 2, ingridient: []),
        MenuItem(price: 11.5, title: "Dessert 1", menuCategory: .c, ordersCount: 3, ingridient: []),
        MenuItem(price: 10.8, title: "Dessert 2", menuCategory: .c, ordersCount: 1, ingridient: []),
        MenuItem(price: 9.5, title: "Dessert 4", menuCategory: .c, ordersCount: 3, ingridient: [])
    ]
}
