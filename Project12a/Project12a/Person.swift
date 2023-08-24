//
//  Person.swift
//  Project12a
//
//  Created by Berkay Tuncel on 21.08.2023.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
