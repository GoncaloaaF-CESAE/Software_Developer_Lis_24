//
//  ToDoView.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import SwiftUI

struct ToDoView: View {
    var toDo: ToDo
    var body: some View {
        VStack(alignment: .center){
            
            Image("todoImg")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 150)
                .clipped()
            
            
            Text(toDo.title)
            
            
            
        }
    }
}

#Preview {
    ToDoView(toDo: ToDo(userId: 1, id: 1, title: "laboriosam mollitia et enim quasi adipisci quia provident illum", completed: false))
    
}
