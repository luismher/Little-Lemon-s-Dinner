//
//  MenuItem.swift
//  Little Lemon's Dinner
//
//  Created by Luismi on 11/17/23.
//

import Foundation

protocol menuProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingridient: [Ingridient] { get set }
}

struct MenuItem: Identifiable, Hashable, menuProtocol {
    var id = UUID()
    var price: Double
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var ingridient: [Ingridient]

}
