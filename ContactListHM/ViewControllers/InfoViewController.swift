//
//  InfoViewController.swift
//  ContactListHM
//
//  Created by Dinar on 10.02.2023.
//

import UIKit

class InfoViewController: UITableViewController {
    
    var person = Person.getContactPerson()

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = person[section].fullname
        return section
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoContacts", for: indexPath)
        let personInstance = person[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = personInstance.numberPhonePerson
        content.secondaryText = personInstance.emailAdressPerson
        cell.contentConfiguration = content
        return cell
    }

}
