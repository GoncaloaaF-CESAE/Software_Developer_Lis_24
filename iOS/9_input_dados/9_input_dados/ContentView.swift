//
//  ContentView.swift
//  9_input_dados
//
//  Created by Gonçalo Feliciano on 06/01/2025.
//

import SwiftUI
//TODO: Garantir que o nome so altera se o novo novo nome tiver mais de 3 chars

//TODO: quando o nome e alterado a TF limpa 

struct ContentView: View {
    @State var novoNome:String = ""
    @State var nome = "Sem nome"
    var body: some View {
        VStack {
          
            Text(nome)
            
            Spacer()
                .frame(height: 25)
            
            TextField("Qual o seu nome?", text: $novoNome)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
              
            Spacer()
                .frame(height: 55)
            Button("Mudar Nome") {
                nome = novoNome
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
