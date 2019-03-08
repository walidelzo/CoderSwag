//
//  ViewController.swift
//  CoderSwag
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    @IBOutlet weak var categoryTableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.dataSource=self
        categoryTableView.delegate=self
    }
    
    //MARK: -  data source of category table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getGategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as?CatogeryCell {
            let oneCategory=DataServices.instance.getGategory()[indexPath.row]
            cell.getCell(category: oneCategory)
         return cell
        }
        else
        {
            return CatogeryCell()
        }
        
        
    }
    //MARK:- tableview selected and segue
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let oneCategory=DataServices.instance.getGategory()[indexPath.row]
        performSegue(withIdentifier: "toProducts", sender:oneCategory)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let products = segue.destination as? ProductsViewController{
          
            //hide the back button title
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            
            
            assert(((sender as? Category) != nil))
            products.initProducts(category: sender as! Category)
           
        }
        
        
        
    }

}

