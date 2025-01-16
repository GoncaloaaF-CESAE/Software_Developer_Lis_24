//
//  Modelo.swift
//  20_swiftDataDemo
//
//  Created by Gonçalo Feliciano on 16/01/2025.
//

import Foundation
import SwiftData


@Model
class Aluno{
    
    @Attribute(.unique) var nif: Int
    var nome: String
    var turma: String
    
    
    init(nif:String,nome: String, Turma: String) {
        
        self.nif = Int(nif)!
        self.nome = nome
        self.turma = Turma
    }
    
}
