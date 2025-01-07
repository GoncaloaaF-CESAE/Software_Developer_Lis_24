//
//  ContentViewModel.swift
//  10_aula_GtN_MVVM
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import Foundation

enum Feedback:String{
    
    case semFeedback = " "
    case erro = "O valor não e int"
    case maior = "o valor oculto é Maior"
    case menor = "O valor oculto é Menor"
    case igual = "Acertou"
    
}


class ContentViewModel: ObservableObject{
    
    var randNumb: Int
    @Published var guessTF: String = ""
    @Published var numTentativas = 0
    @Published var msg: Feedback?{
        didSet{
            guessTF = ""            
        }
    }
    
    
    init() {
        self.randNumb = Int.random(in: 0...1000)
        self.msg = .semFeedback
        print(randNumb)
    }
    
    func guess(){
        numTentativas += 1
        
        guard let guess = Int(guessTF) else{
            msg = .erro
            return
        }
        
        if guess > randNumb{
            msg = .menor
            return
        }else if guess < randNumb{
            msg = .maior
            return
        }
        
        msg = .igual
        
    }
}
