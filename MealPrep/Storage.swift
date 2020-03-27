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
    
    var objects: [Recipe]
    
    private init(){
        
        objects = [Recipe]()
        objects.append(Recipe(recipeName: "Chicken Pot Pie", recipe: "Pie crust, margerine, onion, flour, salt, pepper, chicken broth, milk, chicken, vegetables"))
        objects.append(Recipe(recipeName: "Chicken Stir Fry", recipe: "chicken, broccoli, honey, salted seseme oil, soy sauce, chicken broth"))
        
        

        

    }
   
    
   
}
