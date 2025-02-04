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
                            
                            NavigationLink(value: item){
                                ItemListView(item: item)
                                }
                            
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Resturant Name")
            .navigationDestination(for: Item.self){selection in
                DetailsView(item: selection)
            }
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button{
                        
                    } label: {
                        Label("View Order", systemImage: "takeoutbag.and.cup.and.straw.fill")
                    }
                }
                ToolbarItem(placement: .navigation){
                    Button{
                        
                    } label: {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                }
            
            }
        }
        
        
    }
}



#Preview {
    ContentView()
}
