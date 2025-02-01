//
//  ContentView.swift
//  MenuApp
//
//  Created by Madison Francis on 2/1/25.
//

import SwiftUI

struct ContentView: View {
    var menu = loadMenu()
    var body: some View {
        NavigationStack{
            List{
                ForEach(menu.menu){ catagory in
                    Section(catagory.category){
                        ForEach(catagory.items){item in
                            ItemView(item: item)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Resturant Name")
        }
        
        
    }
}

struct ItemView: View {
    var item: Item
    var body: some View {
        HStack(spacing: 15){
            VStack{
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(height:80)
                    .cornerRadius(4)
                Text(item.price, format: .currency(code: Locale.current.identifier))
                    .font(.headline)
                    .fontWeight(.bold)
            }
            VStack(alignment: .leading,spacing: 5){
                Text(item.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
                
                Text(item.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.9)
                HStack{
                    ForEach(item.dietary_info, id: \.self){diet in
                        makeDietBubble(diet)
                            
                    }
                }
                
            }
        }
    }
    func makeDietBubble(_ item:String) -> some View {
      switch item {
        case "Vegetarian":
          return Circle()
              .fill(.green) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("Vg")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        case "Contains Dairy":
            return Circle()
              .fill(.yellow) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("D")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
      case "Dairy-Free":
          return Circle()
            .fill(.yellow) // Fill the circle with the specified color
            .frame(width: 30, height: 30) // Set the size of the circle
            .overlay(
                Text("D-")
                  .foregroundColor(.primary) // Text color inside the circle
                  .font(.body)
                    .bold())
      case "Vegan":
            return Circle()
              .fill(.green) // Fill the circle with the specified color
              .frame(width: 35, height: 30) // Set the size of the circle
              .overlay(
                  Text("V")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
      case "Gluten-Free":
            return Circle()
              .fill(.green) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("GF")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
      case "Contains Gluten":
            return Circle()
              .fill(.green) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("G")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        case "Paleo":
            return Circle()
              .fill(.cyan) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("P")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        case "Contains Nuts":
            return Circle()
              .fill(.brown) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("N")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        case "Halal":
            return Circle()
              .fill(.brown) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("H")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        case "Kosher":
            return Circle()
              .fill(.gray) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("Ks")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        case "Low-Carb":
            return Circle()
              .fill(.gray) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("LC")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
        default:
            return Circle()
              .fill(.red) // Fill the circle with the specified color
              .frame(width: 30, height: 30) // Set the size of the circle
              .overlay(
                  Text("")
                    .foregroundColor(.primary) // Text color inside the circle
                    .font(.body)
                      .bold())
      }
    }
}

#Preview {
    ContentView()
}
