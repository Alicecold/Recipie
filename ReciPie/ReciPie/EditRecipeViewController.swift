//
//  EditRecipeViewController.swift
//  ReciPie
//
//  Created by Alice Darner on 2018-01-18.
//  Copyright © 2018 Alice Darner. All rights reserved.
//

import UIKit

class EditRecipeViewController: UIViewController {
    @IBOutlet weak var NameTxt: UITextField!
    
    @IBOutlet weak var DescriptionTxt: UITextView!
    
    @IBOutlet weak var Image: UIImageView!
    
    var current:ViewController.Recipe?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let current = current {
            NameTxt.text = current.name;
            Image.image = UIImage(named: current.img);
            DescriptionTxt.text = current.des;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
