//
//  RecipeTableViewController.swift
//  Recipie
//
//  Created by Alice Darner on 2017-09-20.
//  Copyright © 2017 Alice Darner. All rights reserved.
//

import UIKit

class RecipeTableViewController: UITableViewController {
    
    var recipes = [Recipe]();

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleRecipes();
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipes.count;
    }
    
    private func loadSampleRecipes(){
        let photo1 = UIImage(named: "cupcake");
        let photo2 = UIImage(named: "sushi")
        let photo3 = UIImage(named: "salad")
        
        guard let meal1 = Recipe(name: "Salad", photo: photo3) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = Recipe(name: "Salmon Sushi", photo: photo2) else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = Recipe(name: "Lemon Cupcake", photo: photo1) else {
            fatalError("Unable to instantiate meal3")
        }
        
        recipes += [meal1, meal2, meal3]
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)as? RecipeTableViewCell  else {
            fatalError("The dequeued cell is not an instance of RecipeTableViewCell.")
        }
        let recipe = recipes[indexPath.row];
        
        cell.recipeNameLabel.text = recipe.name
        cell.recipeThumbnailImage.image = recipe.photo

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
