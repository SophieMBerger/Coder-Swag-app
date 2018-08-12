//
//  Category.swift
//  coderSwag-app
//
//  Created by Sophie Berger on 12.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import Foundation

struct Category {
    
    //can not set form other classes, but can get form other classes
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
     
}
