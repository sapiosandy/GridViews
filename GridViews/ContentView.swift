//
//  ContentView.swift
//  GridViews
//
//  Created by Sandra Gomez on 6/15/23.
//

import SwiftUI

struct ContentView: View {
    var symbols = ["headphones"]
    var colors : [Color] = [.gray]
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 30) {
                    ForEach((0...999), id: \.self){
                        Image(systemName: symbols[$0 % symbols.count])
                            .font(.system(size: 30))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                            .background(colors[$0 % colors.count])
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            .navigationTitle("Events")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
