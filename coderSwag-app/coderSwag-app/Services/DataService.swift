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
    
    
    //Product data
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"), Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"), Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes  Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    //Empty Product array (must have a type)
    private let digitalGoods = [Product]()
    
    //returns an array of Categories
    func getCategories() -> [Category] {
        return categories
    }
    
    //gets data for selected category
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
    //return the product arrays
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
