//
//  ContentViewModel.swift
//  10_aula_7Jan
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import Foundation


class ContentViewModel: ObservableObject{
    
    @Published var nome = "Gonçalo"
    @Published var novoNome = ""
    
    
    func mudarNome(){
        nome = novoNome
    }

}
