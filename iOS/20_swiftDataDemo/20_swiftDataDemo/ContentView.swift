//
//  ContentView.swift
//  20_swiftDataDemo
//
//  Created by Gonçalo Feliciano on 16/01/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var ctx
    
    @Query var alunos:[Aluno]
    
    @State var nome: String = ""
    @State var nif:String = ""
    
    var body: some View {
    
        NavigationStack {
            VStack{
                List{
                    
                    ForEach(alunos){aluno in
                        ListAlunoLineView(aluno: aluno)
                    }
                }//List
                .overlay {
                    if alunos.isEmpty{
                        ContentUnavailableView("Sem Alunos", systemImage: "person.crop.square.on.square.angled")
                        
                    }
                }
                
                VStack{
                    
                    HStack{
                        TextField("NIF", text: $nif)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        TextField("Nome", text: $nome)
                            .textFieldStyle(.roundedBorder)
                            .padding()
            
                    }
                    
                    Button {
                        let novoAluno = Aluno(nif: nif, nome: nome, Turma: "")
                        ctx.insert(novoAluno)
                        
                        try! ctx.save() // salva os dados, mas nao e necesario  se autoSave = true
                        
                        nome = ""
                        nif =  ""
                        
                        
                    } label: {
                        Text("Add Aluno")
                    }

                    
                    
                }
                
                
                
                
            }// main VStack
            .navigationTitle("Lista de Alunos")
            
        }// NavigationStack
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Aluno.self)
}
