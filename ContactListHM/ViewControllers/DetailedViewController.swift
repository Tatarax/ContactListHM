//
//  DetailedViewController.swift
//  ContactListHM
//
//  Created by Dinar on 10.02.2023.
//

import UIKit

class DetailedViewController: UIViewController {

    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = person.fullname
        phoneLabel.text = person.numberPhonePerson
        emailLabel.text = person.emailAdressPerson

    }
    
    




}
