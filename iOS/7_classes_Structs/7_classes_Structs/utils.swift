//
//  utils.swift
//  7_classes_Structs
//
//  Created by Gonçalo Feliciano on 17/12/2024.
//

import Foundation


extension Array<Int>{
    
    func avg() -> Float{
        var sum:Int = 0
        
        for i in self{
            sum += i
        }
            
        return Float(sum) / Float(self.count)
    
    }
    
}




