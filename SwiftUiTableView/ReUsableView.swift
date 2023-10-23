//
//  ReUsableView.swift
//  SwiftUiTableView
//
//  Created by Neosoft on 23/10/23.
//

import SwiftUI

struct ReUsableView: View {
    let CategoryData : [String]
    var body: some View {
        VStack{
            List(CategoryData,id: \.self){data in
                Text("\(data)")
            }
        }
    }
}

struct ReUsableView_Previews: PreviewProvider {
    static var previews: some View {
        ReUsableView(CategoryData: CategoryDemoData.first?.CatData ?? [])
    }
}
