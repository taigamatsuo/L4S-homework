//
//  Encodable Extensions.swift
//  test2
//
//  Created by 松尾大雅 on 2020/09/21.
//  Copyright © 2020 litech. All rights reserved.
//

import Foundation

enum MyError:Error {
    case encodingError
}

extension Encodable {
    
    func toJson(excluding keys : [String] = [String]()) throws -> [String:Any] {
        
        let objectData = try JSONEncoder().encode(self)
        let jsonObject = try JSONSerialization.jsonObject(with: objectData, options: [])
        guard var json = jsonObject as?[String:Any]else {throw MyError.encodingError}
        
        for key in keys{
            json[key] = nil
        }
        return json
    }
}
