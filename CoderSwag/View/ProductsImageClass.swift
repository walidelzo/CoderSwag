//
//  ProductsImageClass.swift
//  CoderSwag
//
//  Created by Admin on 3/8/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit
@IBDesignable
class ProductsImageClass: UIImageView {
    override func prepareForInterfaceBuilder() {
        //
        customize()
    }
    
    override func awakeFromNib() {
        //
        customize()
    }
    
    
    func customize(){
        layer.cornerRadius = 5.0
        
        
        
        
    }
    
    
    
}
