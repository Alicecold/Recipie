//
//  RecipeViewController.swift
//  ReciPie
//
//  Created by Alice Darner on 2018-01-17.
//  Copyright © 2018 Alice Darner. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var howto: UITextView!
    
    
    
    var current:ViewController.Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let current = current{
            image.image = UIImage(named: current.img);
            name.text = current.name;
            howto.text = current.des;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeEdit" {
            if let editPage = segue.destination as? EditRecipeViewController {
                    editPage.current = current;
            }
        }
    }
 

}
