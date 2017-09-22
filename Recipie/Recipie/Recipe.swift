//
//  Recipe.swift
//  Recipie
//
//  Created by Alice Darner on 2017-09-20.
//  Copyright © 2017 Alice Darner. All rights reserved.
//

import Foundation
import UIKit

class Recipe {
    
    //MARK: Properties
    
    var name: String;
    var photo: UIImage?;
    
    init?(name: String, photo: UIImage?) {
        
        
        if name.isEmpty  {
            return nil;
        }
        
        
        self.name = name;
        self.photo = photo;
        
    }
    
}
