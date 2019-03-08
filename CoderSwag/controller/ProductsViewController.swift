//
//  ProductsViewController.swift
//  CoderSwag
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var productsCollectionView:UICollectionView!
    
    
    private (set) public var productsToShow=[Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollectionView.dataSource=self
        productsCollectionView.delegate=self
        print("the width of device is : \(view.frame.width)")
        
        
    }
    
    //MARK: - Helper Methods
    func initProducts(category:Category){
        productsToShow =  DataServices.instance.getProducts(forCategory: category.title)
        navigationItem.title=category.title
    }
    
    //MARK:- collection View dataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsToShow.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        ///
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PorductCell", for: indexPath) as? ProductCollectionViewCell
        {
            let thisProduct = productsToShow[indexPath.row]
            cell.updatecell(thisProduct: thisProduct)
            return cell
        }else{
            
            return ProductCollectionViewCell()
        }
    }
    
    
    
    
}
