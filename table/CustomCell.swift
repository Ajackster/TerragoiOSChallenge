//
//  CustomCell.swift
//  table
//
//  Created by Mac User on 5/12/16.
//  Copyright © 2016 Ajackster. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var firstNameLbl: UILabel!
    @IBOutlet weak var lastNameLbl: UILabel!
    @IBOutlet weak var usernameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
