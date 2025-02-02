//
//  DetailsView.swift
//  MenuApp
//
//  Created by Madison Francis on 2/1/25.
//

import SwiftUI

struct DetailsView: View {
    var item: Item
    var body: some View {
        Image(systemName: "plus")
        Text(item.name)
        Text(item.description)
        Text(item.price, format: .currency(code: Locale.current.identifier))
        HStack{
            ForEach(item.dietary_info, id: \.self){diet in
                Text(diet)
            }
        }
    }
}

#Preview {
    DetailsView(item: Item(name: "Dummy food", description: "this is an example of a food item on the menu.", price: 12.67, dietary_info: ["Gluten-Free","Contains Dairy"]))
}
