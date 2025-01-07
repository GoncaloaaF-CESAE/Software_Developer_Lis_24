//
//  ContentView.swift
//  12_aula_Nav_Listas
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var nomeTF:String = ""
    @State var novoNome = ""
    var body: some View {
        NavigationStack{
                
            VStack{
                Text (novoNome)
                TextField("Nome: ", text: $nomeTF)
                    .frame(width: 250)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    novoNome = nomeTF
                } label: {
                    Text("Mudar Nome")
                }
                
            
                NavigationLink {
                    
                    newView(nome: novoNome)
                    
                } label: {
                    Text("Go to View 2")
                        .frame(width: 160, height: 60)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .clipShape(Capsule())
                }


                
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
