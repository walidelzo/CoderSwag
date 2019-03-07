//
//  CatogeryCell.swift
//  CoderSwag
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit

class CatogeryCell: UITableViewCell {
    @IBOutlet weak var categoryName:UILabel!
    @IBOutlet weak var categoryImage:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func getCell(category:Category) {
        categoryName.text=category.title
        categoryImage.image=UIImage(named: category.imageName)
    }

}
