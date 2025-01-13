//
//  APIHandler.swift
//  17_save_data_API
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import Foundation


class APIHandler{
    
    var url:URL
    
    init(url: String) {
        self.url = URL(string: url)!
    }
    
    
    
    func loadData() async throws -> ToDos{
        
        var req = URLRequest(url: self.url)
        req.httpMethod = "GET"
        
        let (data, httpResp) = try await URLSession.shared.data(for: req)
        
        guard let resp = httpResp as? HTTPURLResponse, (200...299).contains(resp.statusCode) else {

            return []
        }
        
        let myData = try JSONDecoder().decode(ToDos.self, from: data)
        
        return myData
        
    }
    
    
    func saveData(_ myToDo: ToDo) async throws -> ToDo?{
        
        var req = URLRequest(url: self.url)
        
        req.httpMethod = "POST"
        
        req.httpBody = try JSONEncoder().encode(myToDo)

        req.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")


        
        let (data, httpResp) = try await URLSession.shared.data(for: req)
        
        guard let resp = httpResp as? HTTPURLResponse, (200...299).contains(resp.statusCode) else {
            print((httpResp as! HTTPURLResponse).statusCode)
            return nil
        }
        
        print(data)
        let myData = try JSONDecoder().decode(ToDo.self, from: data)
        
        return myData
        
    }
    
}
/*
 
 GET - ler
 POST - Criar
 
 PUT - Atualizar
 DELETE - Apagar
 
 */
