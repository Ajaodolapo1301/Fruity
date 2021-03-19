//
//  FruitModel.swift
//  learningPath1
//
//  Created by NCK App Dev on 16/03/2021.
//

import SwiftUI

struct FruitModel : Identifiable {

    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
    
    
}
