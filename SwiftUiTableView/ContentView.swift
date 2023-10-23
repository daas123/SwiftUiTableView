//
//  ContentView.swift
//  SwiftUiTableView
//
//  Created by Neosoft on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    var CategoryData : [CategoryDataFormate]
    var body: some View {
        NavigationView {
            List(CategoryData , id: \.id) { datum in
                NavigationLink {
                    ReUsableView(CategoryData: datum.CatData)
                } label: {
                    Text("\(datum.Catname)")
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(CategoryData: CategoryDemoData)
    }
}
