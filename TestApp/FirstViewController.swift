//
//  FirstViewController.swift
//  TestApp
//
//  Created by  Джамбулат Стамбулов on 27.01.2022.
//

import UIKit

class FirstViewController: UITableViewController {
    
    let person = ["Person1", "Person2", "Person3"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.firstNamePerson.text = person[indexPath.row]
        cell.imagePerson.image = UIImage(named: person[indexPath.row])
        cell.imagePerson.layer.cornerRadius = cell.imagePerson.frame.size.height / 2
        cell.imagePerson.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
