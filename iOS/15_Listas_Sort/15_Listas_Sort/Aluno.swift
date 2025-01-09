//
//  Alunos.swift
//  15_aula_Listas
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import Foundation


class Aluno: Identifiable{
    var id =  UUID()
    
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
}

