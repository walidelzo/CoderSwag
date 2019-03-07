//
//  Category.swift
//  CoderSwag
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import Foundation

struct Category {
    private (set) public var title:String
    private (set) public var imageName:String
    
    init(title:String , imageName:String) {
        self.title=title
        self.imageName=imageName
    }
    
}
