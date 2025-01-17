//
//  ToDo.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import Foundation
import SwiftUICore


/*
 {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
 
 */

typealias ToDos = [ToDo]


struct ToDo: Codable, Identifiable{
    var userId:Int
    var id:Int
    var title:String
    var completed:Bool
    
    
    func setColor() -> Color{
        if completed{
            return .green
        }
        return .red
        
    }
}


// ToDos == [Todo]
