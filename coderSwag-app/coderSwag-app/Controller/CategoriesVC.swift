//
//  ViewController.swift
//  coderSwag-app
//
//  Created by Sophie Berger on 11.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

//added two protocols
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //properties set to the protocols
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }
    
    //sets cell height within tableView
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170.0
    }
    
    //wants to know how many rows in the table view, thus # of items in categories array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    //feed the data into a certain table view element number
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //try to create a cell
        //takes a cell not in use in table view
        //"CategoryCell" is identifier for that prototype cell in storyboard!!
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            //grabbing an index out of the categories array
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
        }else {
            return CategoryCell() //return empty cell
        }
    }

    //passing data into performSegue, so that it can be used in prepareForSegue function
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            //need to create a new one, can not modify the default one
            let barbutton = UIBarButtonItem()
            barbutton.title = ""
            navigationItem.backBarButtonItem = barbutton
            
            assert(sender as? Category != nil) //forcing crash at build time if value is nil
            //specifiy that the object type of sender is a Category
            productsVC.initProducts(category: sender as! Category)
        }
    }
    


}

