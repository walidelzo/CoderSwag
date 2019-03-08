//
//  ProductCollectionViewCell.swift
//  CoderSwag
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productName:UILabel!
    @IBOutlet weak var productPrice:UILabel!

    func updatecell(thisProduct:Product){
        productImage.image=UIImage(named: thisProduct.imageName)
        productName.text=thisProduct.title
        productPrice.text=thisProduct.price
        
    }
    
    


}
