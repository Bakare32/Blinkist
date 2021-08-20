//
//  person.swift
//  Blinklist
//
//  Created by  Decagon on 26/07/2021.
//

import UIKit
//MARK-- Model for the json file
struct UserData: Codable {
    //Mark -Atributes
    var id: Int
    var title: String
    var author: String
    var book_type: String
    var length: Int
    var image: String
    var description: String
    var access: String
}



