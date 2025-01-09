//
//  APIHandler.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import Foundation


class APIHandler{
    
    var url:URL
    
    init(url: String) {
        self.url = URL(string: url)!
    }
    
    
    
    func loadData() async throws -> ToDos{
        
        let req = URLRequest(url: self.url)
        
        let (data, httpResp) = try await URLSession.shared.data(for: req)
        
        guard let resp = httpResp as? HTTPURLResponse, (200...299).contains(resp.statusCode) else {

            return []
        }
        
        let myData = try JSONDecoder().decode(ToDos.self, from: data)
        
        return myData
        
    }
    
    
    
}
