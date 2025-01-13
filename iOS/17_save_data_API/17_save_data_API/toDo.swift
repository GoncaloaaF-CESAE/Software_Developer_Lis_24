//
//  toDo.swift
//  17_save_data_API
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//
import Foundation
import SwiftUICore


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
