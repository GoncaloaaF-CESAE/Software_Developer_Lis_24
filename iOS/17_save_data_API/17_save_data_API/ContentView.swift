//
//  ContentView.swift
//  17_save_data_API
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    
    var api = APIHandler(url: "https://jsonplaceholder.typicode.com/todos")
    
    var body: some View{
    
        NavigationStack {
            
            
            VStack {
                
                
                
                Button {
                    
                    Task{
                        
                        do{
                            print( try await api.loadData())
                        }catch{
                            
                            
                            print("Erro")
                        }
                    }
                } label: {
                    Text("load data")
                }
                
                Button {
                    Task{
                        do{
                            print( try await api.saveData(ToDo(userId: 99, id: 99, title: "Titulo", completed: true))!)
                            
                        }catch{
                            
                            
                            print("Erro \(error)")
                        }
                    }
                } label: {
                    Text("save data")
                }
                
            }
            .padding()
            
            NavigationLink("Add tf") {
                
                AddView()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
