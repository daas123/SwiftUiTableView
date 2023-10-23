//
//  ContentView.swift
//  SwiftUiTableView
//
//  Created by Neosoft on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var newdata = [1,2,3,4,5,6,7,8]
    var body: some View {
        VStack{
            List{
                Section {
                    ForEach(newdata , id: \.self){
                        num in
                        Text("\(num)")
                    }
                    .onDelete(perform: deleteRow)
                    
                }header: {
                    Text("Basic Editable View")
                }
            }.navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }
    var addButton: some View {
            Button(action: {
                newdata.append(newdata.count + 1)
            }) {
                Image(systemName: "plus")
            }
        }
    func deleteRow(at offsets: IndexSet) {
        newdata.remove(atOffsets: offsets)
       }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


