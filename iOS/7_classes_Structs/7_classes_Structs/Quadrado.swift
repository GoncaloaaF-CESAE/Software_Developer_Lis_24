//
//  Quadrado.swift
//  7_classes_Structs
//
//  Created by Gonçalo Feliciano on 17/12/2024.
//

import Foundation



class Quadrado{
    
    var lado:Float{
        willSet{
            print("o lado vai ser alterado para \(newValue) de \(lado)")
            
        }
        
        didSet{
            print("o lado vai foi alterado para \(lado) de \(oldValue)")
        }
        
    }
    
    var area:Float{
        set{
            self.lado = sqrt(newValue)
        }
        
        get{
           return pow(lado, 2)
        }
    }
    
    var infos:String{
            return "o lado do Quadrado é \(self.lado)"
    }
    
    
    var perimetro: Float{
        set{
            self.lado = newValue / 4
        }
        
        get{
            return self.lado * 4
        }
    }
    
    
    init(lado: Float) {
        self.lado = lado
    }
    
}
