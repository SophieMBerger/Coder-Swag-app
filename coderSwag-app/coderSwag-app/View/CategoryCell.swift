//
//  CategoryCell.swift
//  coderSwag-app
//
//  Created by Sophie Berger on 11.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    //every time cell is added to table view this function will be called
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
