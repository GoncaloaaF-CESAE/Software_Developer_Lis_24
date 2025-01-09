//
//  ContentViewMoldel.swift
//  15_Listas_Sort
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import Foundation


class ContentViewMoldel:ObservableObject{
    
    @Published var lista = [
       Aluno(nome: "João", idade: 20),
       Aluno(nome: "Maria", idade: 22),
       Aluno(nome: "Carlos", idade: 19),
       Aluno(nome: "Ana", idade: 21),
       Aluno(nome: "Pedro", idade: 23),
       Aluno(nome: "Beatriz", idade: 20),
       Aluno(nome: "Lucas", idade: 18),
       Aluno(nome: "Sofia", idade: 24),
       Aluno(nome: "Gabriel", idade: -1),
       Aluno(nome: "Isabela", idade: -1)
   ]
   
    
    @Published var novoNome:String = ""
    @Published var novaIdade:String = ""
    @Published var onlyInvalid = false{
        didSet{
            lista.filter { al in
                al.idade == -1
            }
        }

    }
    
    func addAluno(){
        
        lista.append(Aluno(nome: novoNome, idade: Int(novaIdade) ?? -1))
        novoNome = ""
        novaIdade = ""
    }
    
    func listaFiltradaInico(letra: String) -> [Aluno]{
        return lista.filter { al in
            al.nome.uppercased().starts(with: letra.uppercased())
        }
    }
    
    
    func listaOrdenadaNome(){
        lista.sort { lhs, rhs in
            lhs.nome < rhs.nome
        }
    }
    
    
    func listaOrdenadaIdade(){
        lista.sort { lhs, rhs in
            lhs.idade  < rhs.idade
        }
    }
    
}
