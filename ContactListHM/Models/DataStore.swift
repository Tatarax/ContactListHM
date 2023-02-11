//
//  DataStore.swift
//  ContactListHM
//
//  Created by Dinar on 10.02.2023.
//

import UIKit

class DataStore {
    
    static let model = DataStore()
    
    let name = [
        "Jon",
        "Jack",
        "Nik",
        "Tom",
        "Nicole",
        "Tim",
        "Alex",
        "Freddi",
        "Neo"
    ].shuffled()
    
    let sureName = [
        "Anderson",
        "Williams",
        "Brown",
        "Miller",
        "Wilson",
        "Jones",
        "Davis",
        "Smith",
        "Taylor"
    ].shuffled()
    
    let numberPhone = [
        "2323",
        "2435",
        "3567",
        "7894",
        "4583",
        "1236",
        "0973",
        "8752",
        "9327"
    ].shuffled()
    
    let emailAdress = [
        "der@mail.ru",
        "qwer@@mail.ru",
        "rtyh@mail.ru",
        "vnfd@mail.ru",
        "nmcs@mail.ru",
        "vnxz@mail.ru",
        "mkjd@mail,ru",
        "xpgq@mail.ru",
        "zlby@mail.ru"
    ].shuffled()
    
}
