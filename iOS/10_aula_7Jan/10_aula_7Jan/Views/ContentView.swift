//
//  ContentView.swift
//  10_aula_7Jan
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

/*
 MVVM
 Navegação
 Binding
 
 listas ??
 
 
 
 */
import SwiftUI

struct ContentView: View {
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        VStack {
            Text(vm.nome)
            
            TextField("Novo Nome:", text: $vm.novoNome)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
            
            
            Button {
                vm.mudarNome()
            } label: {
                Text("Mudar Nome")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
