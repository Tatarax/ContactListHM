//
//  ModelForContact.swift
//  ContactListHM
//
//  Created by Dinar on 10.02.2023.
//

import Foundation

struct Person {
    let namePerson: String
    let sureNamePerson: String
    let numberPhonePerson: String
    let emailAdressPerson: String
    
    var fullname: String {
        "\(namePerson) \(sureNamePerson)"
    }
}

extension Person {
    
    static func getContactPerson() -> [Person] {
        
        var person: [Person] = []
        
        let name = DataStore.model.name
        let sureName = DataStore.model.sureName
        let numberPhone = DataStore.model.numberPhone
        let emailAdress = DataStore.model.emailAdress
        
        let elements = min(
            name.count,
            sureName.count,
            numberPhone.count,
            emailAdress.count)
        
        for element in 0 ... elements - 1 {
            let persons = Person(
                namePerson: name[element],
                sureNamePerson: sureName[element],
                numberPhonePerson: numberPhone[element],
                emailAdressPerson: emailAdress[element]
            )
            
            person.append(persons)
        }
        
       return person
        
        
    }
    
    
    
}


