//
//  DetailViewController.swift
//  MealPrep
//
//  Created by Danna Don on 3/26/20.
//  Copyright © 2020 ddon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var RecipeNameLabel: UILabel!
    @IBOutlet weak var RecipeLabel: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = RecipeNameLabel {
                label.text = detail.recipeName
            }
            if let label = RecipeLabel {
                label.text = detail.recipe
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Recipe? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

