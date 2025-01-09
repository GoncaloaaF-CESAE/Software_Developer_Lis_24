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
          
            List{
                Section {
                    ForEach(vm.lista) { al in
                        Text(al.nome)
                    }
                } header: {
                    Text("Alunos")
                } footer: {
                    Text("Fim Alunos")
                }

                Section {
                    ForEach(vm.listaFiltradaInico(letra: "C")) { al in
                            Text(al.nome)
                        }
                    } header: {
                        Text("Profs")
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
