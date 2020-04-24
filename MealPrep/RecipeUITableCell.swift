//
//  RecipeUITableCell.swift
//  MealPrep
//
//  Created by Danna Don on 3/27/20.
//  Copyright © 2020 ddon. All rights reserved.
//

import UIKit
//the cell for master page. Each cell will show recipe name and the beginning of the actual recipe
class RecipeUITableCell: UITableViewCell {
    
    var recipeName: String = ""
    var recipe: String =  ""
    
    @IBOutlet weak var MasterRecipeNameLabel: UILabel!
    
    @IBOutlet weak var MasterRecipeLabel: UILabel!
}
