//
//  ContentViewModel.swift
//  17_save_data_API
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import Foundation


class AddViewModel: ObservableObject{
    
    var apiHandler = APIHandler(url: "https://jsonplaceholder.typicode.com/todos")
    
    @Published var tf_id = ""
    @Published var tf_userId = ""
    @Published var tf_msg = ""
    @Published var tg_comp = false
    
    
    func saveData(){
    
        let todo = ToDo(userId: self.tf_id.asInt,
                        id:  Int(self.tf_id) ?? -1,
                        title: tf_msg,
                        completed: tg_comp)
        
        Task{
            
             var resp = try await apiHandler.saveData(todo)
            print(resp)
        }
        
       
    }
    
    
    
    
    
    
    
}
