//
//  ContactViewController.swift
//  ContactListHM
//
//  Created by Dinar on 10.02.2023.
//

import UIKit

class ContactViewController: UITableViewController {
    
    var person = Person.getContactPerson()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let personInstance = person[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = personInstance.fullname
        cell.contentConfiguration = content

        return cell
    }
    


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedVC = segue.destination as? DetailedViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailedVC.person = person[indexPath.row]
    }
    

}

extension ContactViewController {
    
}
