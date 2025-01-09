//
//  ContentView.swift
//  13_aula_Listas
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ContentViewMoldel()

    var body: some View {
        VStack {
            HStack{
                Button {
                    vm.listaOrdenadaNome()
                } label: {
                    btn1View(btnText: "Sort Nome")
                }
                
                
                
                Button {
                    vm.listaOrdenadaIdade()
                } label: {
                    btn1View(btnText: "Sort Idade")
                }
            }
          
            List{
                Section {
                    ForEach(vm.lista) { al in
                        Text(al.nome)
                    }
                } header: {
                    Text("Alunos")
                }
            
            }
            .listStyle(.insetGrouped)
            
            VStack{
    
                HStack{
                    TextField("nome", text: $vm.novoNome)
                        .textFieldStyle(.roundedBorder)
                    TextField("idade", text: $vm.novaIdade)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button {
                    vm.addAluno()
                } label: {
                    Text("Adiconar Aluno")
                }
                
            }// Add Alunos
        }// main VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
