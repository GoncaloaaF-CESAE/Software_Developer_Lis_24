//
//  ContentViewModel.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import Foundation


class ContentViewModel: ObservableObject{
    
    @Published var toDoList:ToDos = []
    
    var apiHandler = APIHandler(url: "https://jsonplaceholder.typicode.com/todos")
    
    
    func loadData(){
     
        Task{

            do{
                try await toDoList = apiHandler.loadData()
                
            }catch{
                print("Erro no load de dados")
            }
        }
    }
    

}
