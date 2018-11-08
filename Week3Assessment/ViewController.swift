//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath) as! PersonCell
        
        let person = personArray[indexPath.row]
        cell.setup(person: person)
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = person.favoriteColor
        cell.selectedBackgroundView = backgroundView
        
        return cell
        
    }
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var personArray = [Person]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person1 = Person(name: "Bob", favoriteThing: "Dogs", favoriteColor: .red)
        let person2 = Person(name: "Sally", favoriteThing: "Dolls", favoriteColor: .purple)
        let person3 = Person(name: "Mr. Vanwinkle", favoriteThing: "Chilling on the beach", favoriteColor: .blue)
        
        personArray.append(person1)
        personArray.append(person2)
        personArray.append(person3)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

