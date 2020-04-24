//
//  Storage.swift
//  MealPrep
//
//  Created by Danna Don on 3/27/20.
//  Copyright © 2020 ddon. All rights reserved.
//

import Foundation

class Storage{
    
    
    static let shared: Storage = Storage()
    //array of recipes
    var objects: [Recipe] = [Recipe]()
    
    
    
    private init(){
        
        self.objects = self.load()
        

//        objects.append(Recipe(recipeName: "Chicken Pot Pie", recipe: "Pie Crust, Margerine, Onion, fFlour, Salt, Pepper, Chicken Broth, Milk, Chicken, Vegetables"))
//        objects.append(Recipe(recipeName: "Chicken Stir Fry", recipe: "Chicken, Broccoli, Honey, Salted Seseme Oil, Soy Sauce, Chicken Broth"))
//        objects.append(Recipe(recipeName: "Chicken Marsala", recipe: "Flour, Salt, Pepper, Chciken Broth, Heavy Cream, Marsala, Heavy Cream, Olive Oil, Chcicken, Mushrooms, Parsley, Garlic, Butter"))
//        objects.append(Recipe(recipeName: "Seseme Garlic Tofu", recipe: "Tofu, Soy Suace, Spciy Garlic Sauce, Rice Vineger, Honey, Seseme Oil "))
//        objects.append(Recipe(recipeName: "Teriyaki Tofu and Broccoli", recipe: "Tofu, Olive Oil, Soy Sauce, Cornstarch, Broccoli, Salttt, Pepper, Maple Syrub, Rice Vinegar, garlic, ginger, Brown Rice"))
//        objects.append(Recipe(recipeName: "Tofu Lettuce Wraps", recipe: "Soy Sauce, Seseme Oil, Chili Paste, Ginger, Sugar, Rice Vinegar, Garlic, Vegetable Oil, Tofu, Pepper, Mushroom, Lettuce"))
//         objects.append(Recipe(recipeName: "Beef and Broccoli", recipe: "Cornstarch, Soy Sauce, Flank Beef, Brown Sugar, Garlic, Ginger, Vegetable Oil, Brocolli, White Onions "))
//         objects.append(Recipe(recipeName: "Roast Beef Potluck Rolls", recipe: "Deli Roast Beef, Bread Rolls, Provolone Cheese, Butter, Worcestershire sauce, Parsley, Onion Powder, Sugar "))
//         objects.append(Recipe(recipeName: "Korean Beef Bowls", recipe: "Flank Stead, Rice, Garlic Salt, Seseme Oil, Broccoli, Korean BBQ Sauce Mix"))
        
    }
    // this is how the recipe is archived
    
    
        func save(){
            
            if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: objects, requiringSecureCoding: false){

                let defaults = UserDefaults.standard
                defaults.set(savedData, forKey: "objects")
            }
            

        }
        //loaded everytime the app is reopened with the changed details
        func load() -> [Recipe]{
            
            let defaults = UserDefaults.standard
            if let savedRecipe = defaults.object(forKey: "objects") as? Data{
            if let decodedRecipe = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(savedRecipe) as? [Recipe]{
                 
                return decodedRecipe
                    
                }
            }
            return [Recipe]()
    }

}
