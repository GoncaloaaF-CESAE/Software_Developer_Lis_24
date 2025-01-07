//
//  newView.swift
//  12_aula_Nav_Listas
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import SwiftUI

struct newView: View {
    var nome: String
    
    var body: some View {
        Text(nome)
            .font(.title)
            .bold()
    }
}

#Preview {
    newView(nome: "Nome do User")
}
