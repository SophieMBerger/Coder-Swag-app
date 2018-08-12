//
//  DataService.swift
//  coderSwag-app
//
//  Created by Sophie Berger on 12.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import Foundation

class DataService {
    //created a singleton
    //only created one instance of the service, unlike form a class where you create multiple instances (let = constant, static = same object in memory)
    //Want above, as the service lasts as long as the app, whereas class instances might stop being used before
    static let instance = DataService()
    
    //array holding all of the data
    //data in array could come from server
    private let categories = [Category(title: "SHIRTS", imageName: "shirts.png"), Category(title: "HOODIES", imageName: "hoodies.png"), Category(title: "HATS", imageName: "hats.png"), Category(title: "DIGITAL", imageName: "digital.png") ]
    
    //returns an array of Categories
    func getCategories() -> [Category] {
        return categories
    }
}
