//
//  MenuViewViewModel.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/24/23.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var food: [MenuItem] = [
        MenuItem(price: 20, title: "Food 4", menuCategory: .a, ordersCount: 4, ingridient: [.a, .d, .e,]),
        MenuItem(price: 18, title: "Food 1", menuCategory: .a, ordersCount: 2, ingridient: [.e, .a]),
        MenuItem(price: 18, title: "Food 12", menuCategory: .a, ordersCount: 6, ingridient: [.e, .c, .d]),
        MenuItem(price: 14, title: "Food 6", menuCategory: .a, ordersCount: 5, ingridient: [.c, .a, .b]),
        MenuItem(price: 15.5, title: "Food 5", menuCategory: .a, ordersCount: 8, ingridient: [.e, .d]),
        MenuItem(price: 19.8, title: "Food 2", menuCategory: .a, ordersCount: 3, ingridient: [.a,.d,.e]),
        MenuItem(price: 15.3, title: "Food 3", menuCategory: .a, ordersCount: 9, ingridient: [.c, .a]),
        MenuItem(price: 9.8, title: "Food 8", menuCategory: .a, ordersCount: 10, ingridient: [.e, .d]),
        MenuItem(price: 12.5, title: "Food 10", menuCategory: .a, ordersCount: 12, ingridient: [.c, .b, .a]),
        MenuItem(price: 16.5, title: "Food 7", menuCategory: .a, ordersCount: 7, ingridient: [.c, .a, .b]),
        MenuItem(price: 17.7, title: "Food 11", menuCategory: .a, ordersCount: 1, ingridient: [.e, .a, .e]),
        MenuItem(price: 15, title: "Food 9", menuCategory: .a, ordersCount: 5, ingridient: [.c, .a,.b])
    ]
    
    @Published var drink: [MenuItem] = [
        MenuItem(price: 4, title: "Drink 4", menuCategory: .b, ordersCount: 6, ingridient: []),
        MenuItem(price: 5, title: "Drink 6", menuCategory: .b, ordersCount: 4, ingridient: []),
        MenuItem(price: 5.5, title: "Drink 3", menuCategory: .b, ordersCount: 3, ingridient: []),
        MenuItem(price: 4.5, title: "Drink 1", menuCategory: .b, ordersCount: 7, ingridient: []),
        MenuItem(price: 6.6, title: "Drink 5", menuCategory: .b, ordersCount: 5, ingridient: []),
        MenuItem(price: 7.8, title: "Drink 8", menuCategory: .b, ordersCount: 2, ingridient: []),
        MenuItem(price: 5.3, title: "Drink 2", menuCategory: .b, ordersCount: 4, ingridient: []),
        MenuItem(price: 6.8, title: "Drink 7", menuCategory: .b, ordersCount: 8, ingridient: [])
    ]
    
    @Published var dessert: [MenuItem] = [
        MenuItem(price: 10, title: "Dessert 3", menuCategory: .c, ordersCount: 2, ingridient: []),
        MenuItem(price: 11.5, title: "Dessert 1", menuCategory: .c, ordersCount: 3, ingridient: []),
        MenuItem(price: 10.8, title: "Dessert 2", menuCategory: .c, ordersCount: 1, ingridient: []),
        MenuItem(price: 9.5, title: "Dessert 4", menuCategory: .c, ordersCount: 5, ingridient: [])
    ]
    @Published var isOpenedView = false
    
    @Published var showFood = true
    @Published var showDrink = true
    @Published var ShowDessert = true
    
    @Published var sortBy = SortBy.c
    
    
    func updateMenuItems() {
        switch sortBy {
        case .a:
            food.sort() { $0.ordersCount > $1.ordersCount }
            drink.sort() { $0.ordersCount > $1.ordersCount }
            dessert.sort() { $0.ordersCount > $1.ordersCount }
        case .b:
            food.sort() { $0.price < $1.price }
            drink.sort() { $0.price < $1.price }
            dessert.sort() { $0.price < $1.price }
        case .c:
            food.sort() { sortTitle(L: $0, R: $1)}
            drink.sort() {sortTitle(L: $0, R: $1) }
            dessert.sort() {sortTitle(L: $0, R: $1) }
        }
    }
    
    func sortTitle (L: MenuItem, R: MenuItem) -> Bool {
        let lTitle = L.title.split(separator: " ")
        let rTitle = R.title.split(separator: " ")
        let lNumber = Int(lTitle[lTitle.count - 1]) ?? 0
        let rNumber = Int(rTitle[rTitle.count - 1]) ?? 0
        if lNumber != rNumber {
            return lNumber < rNumber
        } else {
            return L.title < R.title
        }
            
    }
}
