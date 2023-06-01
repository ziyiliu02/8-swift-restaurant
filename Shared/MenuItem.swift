//
//  MenuItem.swift
//  7-swift-menu (iOS)
//
//  Created by Liu Ziyi on 30/5/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id:UUID = UUID()
    var name:String
    var price:String
    var imageName:String 
}
