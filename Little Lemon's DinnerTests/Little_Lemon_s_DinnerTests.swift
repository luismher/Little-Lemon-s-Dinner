//
//  Little_Lemon_s_DinnerTests.swift
//  Little Lemon's DinnerTests
//
//  Created by Luismi on 11/16/23.
//

import XCTest
@testable import Little_Lemon_s_Dinner

final class Little_Lemon_s_DinnerTests: XCTestCase {
    let ShowList = MenuViewViewModel()
    
    func test_Menu_Item_Title() {
        let menuItemTitle = ShowList.drink[1]
        XCTAssertEqual(menuItemTitle.title, "Drink 6")
    }
    
    func test_Menu_Item_Ingridient() {
        let menuItemIngridient = ShowList.food[0]
        XCTAssertEqual(menuItemIngridient.ingridient, [.a, .d, .e])
    }
}
