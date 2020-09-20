//
//  User.swift
//  test2
//
//  Created by 松尾大雅 on 2020/09/20.
//  Copyright © 2020 litech. All rights reserved.
//
//1:28
import Foundation

protocol Identifiable {
    var id : String? { get set } 
}

struct User : Codable, Identifiable {
    var id : String? = nil
    let name : String
    var age  : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
