//
//  MenuObj.swift
//  MenuApp
//
//  Created by Madison Francis on 2/1/25.
//

import Foundation

struct Menu: Codable {
    let menu: [MenuCategory]
}

struct MenuCategory:Identifiable, Codable {
    let id = UUID()
    let category: String
    let items: [Item]
}

struct Item:Identifiable, Codable, Hashable{
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let dietary_info: [String]
    static let exampleItem = Item(name: "test", description: "test description", price: 9.99, dietary_info: ["dairy", "Keto"])
}

func loadMenu() -> Menu {
    if let url = Bundle.main.url(forResource: "Menu", withExtension: "json") {
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            let menu = try decoder.decode(Menu.self, from: data)
            return menu
        } catch {
            print("Problem loading or decoding Menu.json")
        }
    }
    return Menu(menu: [])
}
