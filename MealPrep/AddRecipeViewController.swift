//
//  AddRecipeViewController.swift
//  MealPrep
//
//  Created by Danna Don on 3/27/20.
//  Copyright © 2020 ddon. All rights reserved.
//

import UIKit

class AddRecipeViewController: UIViewController{
    
    @IBOutlet weak var RecipeNameInputLabel: UITextField!
    
    @IBOutlet weak var RecipeInputLabel: UITextView!
    
    @IBOutlet weak var AddButtonLabel: UIButton!
    
    
    
    @objc
    
    @IBAction func AddRecipe() -> Void{
        
    
        
        
        let newRecipeName = RecipeNameInputLabel.text!
        let newRecipeDescp = RecipeInputLabel.text!
        
        let newRecipe = Recipe(recipeName: newRecipeName, recipe: newRecipeDescp)
        
        Storage.shared.objects.append(newRecipe)
        Storage.shared.save()
        performSegue(withIdentifier: "backToTable", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
