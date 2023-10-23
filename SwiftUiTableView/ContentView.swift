//
//  ContentView.swift
//  SwiftUiTableView
//
//  Created by Neosoft on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("This is default TableView")
                    .bold()
                    .font(.title2)
                List (1..<12) {
                    Text("\($0)")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
