//
//  ContentView.swift
//  SwiftUiTableView
//
//  Created by Neosoft on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    var values = [
        Formate(name: "saad", details: "hello there"),
        Formate(name: "daad", details: "hello world")
    ]
    
    var body: some View {
        VStack{
            Text("This is default TableView")
                .bold()
                .font(.title2)
            
            List{
                Section(header: Text("Section1"),footer:Text("Footer")){
                    ForEach(1..<6){
                        Text("\($0)")
                    }
                }.listStyle(InsetGroupedListStyle())
                .listRowInsets(EdgeInsets.init(top:30,leading: 20, bottom: 30, trailing: 0))
                
                Section(header: Text("Header 2"),footer:Text("Footer 2")){
                    ForEach(6..<11){
                        Text("\($0)")
                    }
                }
            }.listStyle(GroupedListStyle())
            
            
            List {
                Section {
                    ForEach(values) { value in
                        Text(value.name)
                    }
                } header: {
                    Text("this Custom Header")
                }footer: {
                    Text("This is custom Footer")
                }
            }.listStyle(SidebarListStyle())
            
            List(values) { value in
                Text(value.name)
            }
                
            
            
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Formate:Identifiable{
    var id = UUID()
    let name : String
    let details : String
}
