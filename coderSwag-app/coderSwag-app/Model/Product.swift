//
//  Product.swift
//  coderSwag-app
//
//  Created by Sophie Berger on 13.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
