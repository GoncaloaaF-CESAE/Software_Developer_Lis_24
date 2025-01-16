//
//  ContentView.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm = ContentViewModel()
    
    var body: some View {
        NavigationStack {
            
            
            VStack {
                
                List {
                    ForEach(vm.toDoList) { todo in
                        NavigationLink {
                            ToDoView(toDo: todo)
                        } label: {
                            ListItemView(toDo: todo)
                        }

                       
                    }
                }
              
                
                Button {
                    print(vm.toDoList)
                    vm.loadData()
                    print(vm.toDoList)
                } label: {
                    Text("Load Data")
                }
            }
            .padding()
        }
      
    }
}

#Preview {
    ContentView()
}
