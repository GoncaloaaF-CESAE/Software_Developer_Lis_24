//
//  ListItemView.swift
//  16_LoadAPI_Lista
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import SwiftUI

struct ListItemView: View {
    var toDo: ToDo
    var body: some View {
    
        HStack (alignment: .center){
            
            Text(toDo.title)
            Spacer()
            Circle().frame(width: 25)
                .foregroundStyle(toDo.setColor())
                .padding(.horizontal, 15)
        }
    }
}

#Preview {
    ListItemView(toDo: ToDo(userId: 1, id: 1, title: "laboriosam mollitia et enim quasi adipisci quia provident illum", completed: false))
}
