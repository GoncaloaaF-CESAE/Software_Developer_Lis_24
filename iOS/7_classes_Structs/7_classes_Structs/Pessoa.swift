//
//  Pessoa.swift
//  7_classes_Structs
//
//  Created by Gonçalo Feliciano on 17/12/2024.
//

import Foundation


class Pessoa{
    
    static var num = 0
    
    
    var nome: String
    var idade: Int
    var timeStamp:String
    
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        self.timeStamp = "data"
        Pessoa.num += 1
    }
    
    
    func mudarNome(para nome:String){
        self.nome = nome
    }
    
    func infos() -> String{
        "nome: \(self.nome), idade: \(self.idade)"
    }
    
}  // -> ref



struct Pessoa_s{

    
    
    
    
    private var _nome: String
    var titulo: String = "Eng"
    
    var nome:String{
        get{
            // manipular a saida -> Eng nome
            
            "\(self.titulo) \(self._nome)"
        }
        
        set{
            // validação do newValue
            
            self._nome = newValue
        }
    }
    
    var idade: Int

    
    var timeStamp: String
    
    init(nome: String, idade: Int) {
        self._nome = nome
        self.idade = idade
        self.timeStamp = "Data"
    }
    
    mutating func mudarNome(para nome:String){
        self.nome = nome
    }
    
    
    func infos() -> String{
        "nome: \(self.nome), idade: \(self.idade)"
    }

} // -> val, prop sao imutáveis, mas podem ser mudadades com o mutating



class Aluno: Pessoa{
    
    var turma:String
    
    init(nome: String, idade: Int, turma:String) {
        self.turma = turma
        super.init(nome: nome, idade: idade)
    }
    
    
    override func infos() -> String {
        "\(super.infos())\nTurma: \(self.turma)"
    }
    

}
