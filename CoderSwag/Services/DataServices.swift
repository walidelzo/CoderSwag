//
//  DataServices.swift
//  CoderSwag
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import Foundation
class DataServices {
    static let instance = DataServices()
    // make a category data meke it as private
   private let Categories = [
    Category(title: "TSHIRTS", imageName: "shirts.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
   
    //make products data
    
    private let hats = [
    Product(title: "NanoSoft logo hate ", price: "$12", imageName: "hat01.png"),
    Product(title: "NanoSoft logo white Hat", price: "$18", imageName: "hat02.png"),
    Product(title: "Nano Soft logo green hat", price: "$21", imageName: "hat03.png"),
    Product(title: "Nano soft logo red hat", price: "$16", imageName: "hat04.png")
    ]
    
    private let shirts = [
    Product(title: "Nano soft T shirt gray", price: "$45", imageName: "shirt01.png"),
    Product(title: "Nano Soft T shirt red", price: "$23", imageName: "shirt02.png"),
    Product(title: "NanoSoft T shirt black", price: "$50", imageName: "shirt03.png"),
    Product(title: "NanoSoft t Shirt white", price: "$34", imageName: "shirt04.png"),
    Product(title: "NanoSoft T Shirt  with gloden logo", price: "$100", imageName: "hate05.png")
    ]
    
    private let hoodies = [
    Product(title: "NanoSoft hoodies yellow", price: "$132", imageName: "hoodie01.png"),
    Product(title: "NanoSoft hoodies black", price: "$34", imageName: "hoodie02.png"),
    Product(title: "NanoSoft hoodies red", price: "$67", imageName: "hoodie03.png"),
    Product(title: "NanoSoft hoodies gloden", price: "$90", imageName: "hoodie04.png")
    ]
    
    private let digitalGoods =  [Product]()
    
    
    
    
    
    func getGategory() -> [Category] {
        return Categories
    }
    
    func getProducts(forCategory title:String )->[Product]{
        
        switch title {
        case "HATS":
            return getHates()
        case "DIGITAL":
            return getDigitalGoods()
        case "HOODIES" :
            return getHoodies()
        default:
            return getShirts()
        }
        
    }
        
        func getHates() ->[Product] {
            return hats
        }
        
        func getShirts()->[Product]{
            return shirts
        }
        
        func getHoodies()->[Product]{
            return hoodies
        }
        func getDigitalGoods()->[Product]{
            return digitalGoods
        }
        
        
        
    
    
    
    
}
