//
//  ToDo.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import Foundation


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
}


// ToDos == [Todo]
