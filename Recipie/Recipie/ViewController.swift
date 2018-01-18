//
//  ViewController.swift
//  ReciPie
//
//  Created by Alice Darner on 2018-01-17.
//  Copyright © 2018 Alice Darner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    struct Recipe {
        var name = "";
        var img = "";
        var des = "";
    }
    var recipeArr:[Recipe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nameArr = ["Lemon Cupcakes", "Salad", "Sushi"]
        let imgArr = ["cupcake", "salad", "sushi"]
        let desArr = ["""
6 dl water
5 dl flour
1 tablespoon baking soda
1 teaspoon vanilla extract
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis hendrerit fringilla egestas. Suspendisse potenti. Nunc vestibulum ipsum in risus egestas eleifend. Morbi iaculis elementum turpis non varius. Curabitur eu ante ornare leo viverra ullamcorper. Morbi quis elit in libero ultricies mollis. Fusce pretium, ex a eleifend faucibus, lacus tortor tristique nulla, in pellentesque justo augue sit amet lacus. Vestibulum aliquam viverra quam non convallis. Nullam sollicitudin mauris vitae placerat tincidunt. Mauris elementum risus lorem, id ullamcorper urna ultricies ac. Maecenas tempor tincidunt porta. Curabitur mollis risus id laoreet tincidunt. Praesent at pellentesque dui. Aenean faucibus eget tortor id posuere.
""", "Main", "Main"]
        
        for i in 0..<nameArr.count {
            var newRes = Recipe()
            newRes.name = nameArr[i]
            newRes.img = imgArr[i]
            newRes.des = desArr[i]
            recipeArr.append(newRes)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // TABLE
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resCell", for:indexPath) as! RecipeTableViewCell
        let cellRest = recipeArr[indexPath.row];
        cell.resName?.text = cellRest.name;
        cell.resCat?.text = cellRest.des;
        //let imgName = cellRest.img //+ "_thumb"
         cell.resImg?.image = UIImage(named: cellRest.img) //UIImage(named: imgName)
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showRecipeDetail", sender: indexPath.row)
    }
    
    // NAV
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetail" {
            if let recipePage = segue.destination as? RecipeViewController {
                if let i = sender as? Int {
                    recipePage.current = recipeArr[i];
                }
            }
        }
    }

}

