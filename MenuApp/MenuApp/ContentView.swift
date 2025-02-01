//
//  ContentView.swift
//  MenuApp
//
//  Created by Madison Francis on 2/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(1..<20, id: \.self){ item in
                        HStack(spacing: 15){
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(height:80)
                                .cornerRadius(4)
                            VStack(alignment: .leading,spacing: 5){
                                Text("Item Name")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.8)
                                
                                Text("Item Description")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.9)
                            }
                        }
                    }
                } header: {
                    Text("Entres")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                }
                Section{
                    ForEach(1..<20, id: \.self){ item in
                        NavigationLink(value: item) {
                            HStack(spacing: 15){
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height:80)
                                    .cornerRadius(4)
                                VStack(alignment: .leading,spacing: 5){
                                    Text("Item Name")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .lineLimit(2)
                                        .minimumScaleFactor(0.8)
                                    
                                    Text("Item Description")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.9)
                                }
                            }
                        }
                    }
                } header: {
                    Text("Sides")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("Resturant Name")
        }
        
        
    }
}

#Preview {
    ContentView()
}
