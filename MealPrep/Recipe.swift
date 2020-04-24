//
//  Recipe.swift
//  MealPrep
//
//  Created by Danna Don on 3/27/20.
//  Copyright © 2020 ddon. All rights reserved.
//

import Foundation


// Recipe class for the app to use to classify the recipe name and the recipe itself
class Recipe: NSObject, NSCoding{
    
    var recipeName: String
    var recipe: String
    
    init(recipeName: String, recipe: String){
        
        self.recipeName = recipeName
        self.recipe = recipe
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        recipeName = aDecoder.decodeObject(forKey: "recipeName") as? String ?? ""
        recipe = aDecoder.decodeObject(forKey: "recipe") as? String ?? ""
        
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(recipeName, forKey: "recipeName")
        aCoder.encode(recipe, forKey: "recipe")
        
        
    }
    
    
    
}
