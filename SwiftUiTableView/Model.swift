//
//  Model.swift
//  SwiftUiTableView
//
//  Created by Neosoft on 23/10/23.
//

import Foundation

struct CategoryDataFormate:Identifiable{
    var id = UUID()
    let Catname : String
    let CatData : [String]
}

let CategoryDemoData = [
    CategoryDataFormate(Catname: "vegitable", CatData: ["Cabbage","Lady Finger" ,"potato" , "Chilly"]),
    CategoryDataFormate(Catname: "Fruit", CatData: ["Banana","Apple","Mango","Cheery"]),
    CategoryDataFormate(Catname: "Dairy Product", CatData: ["milk","milk","milk","milk","milk","milk"]),
    CategoryDataFormate(Catname: "Instant Food", CatData: ["Cabbage","Lady Finger" ,"potato" , "Chilly"]),
    CategoryDataFormate(Catname: "Drinks", CatData: ["Banana","Apple","Mango","Cheery"])
]
