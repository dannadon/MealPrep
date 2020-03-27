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

    }
   
    
   
}
