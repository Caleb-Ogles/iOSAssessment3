//
//  CustomTableViewCell.swift
//  Week3Assessment
//
//  Created by Caleb Ogles on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var favoriteSomethingLabel: UILabel!
    
    
    func setup(person: Person) {
        nameLabel.text = person.name
        favoriteSomethingLabel.text = person.favoriteThing
        
        
    }
    
    
}
