//
//  RecipeTableViewCell.swift
//  ReciPie
//
//  Created by Alice Darner on 2018-01-17.
//  Copyright © 2018 Alice Darner. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    @IBOutlet weak var resName: UILabel!
    @IBOutlet weak var resImg: UIImageView!
    @IBOutlet weak var resCat: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //resImg.layer.cornerRadius = 20
        //resImg.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
