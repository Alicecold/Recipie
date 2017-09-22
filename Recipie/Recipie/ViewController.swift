//
//  ViewController.swift
//  Recipie
//
//  Created by Alice Darner on 2017-09-11.
//  Copyright © 2017 Alice Darner. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginEmailField: UITextField!
    @IBOutlet weak var loginPasswordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var UserLabel: UILabel!
    var handle: AuthStateDidChangeListenerHandle?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if Auth.auth().currentUser != nil {
                self.performSegue(withIdentifier: "login", sender: nil)
            } else {
                // No user is signed in.
                // ...
            }
        }
        
        //try! Auth.auth().signOut()
        
        
        
            Auth.auth().signInAnonymously() { (user, error) in
            //let isAnonymous = user!.isAnonymous  // true
            let uid = user!.uid
            self.UserLabel.text = uid;
        }
 
        
        

    }
    @IBAction func loginUser(_ sender: Any) {
        Auth.auth().signIn(withEmail: loginEmailField.text!, password: loginPasswordField.text!) { (user, error) in
            
            //do stuff here
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        Auth.auth().removeStateDidChangeListener(handle!);
    }


}

