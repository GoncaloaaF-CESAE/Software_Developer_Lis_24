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
    
    @Query(
        //filter: #Predicate<Aluno>{ $0.nif > 3  },
           sort: \Aluno.nome
    )
    var alunos:[Aluno]
    
    @State var nome: String = ""
    @State var nif:String = ""
    
    @State var selecAluno:Aluno?
    
    var body: some View {
    
        NavigationStack {
            VStack{
                List{
                    
                    ForEach(alunos){aluno in
                    
                        
                        ListAlunoLineView(aluno: aluno)
                            .background(selecAluno == aluno ? Color.gray : Color.clear)
                            .onTapGesture {
                                print("tap no aluno com o nfi: \(aluno.nif)")
                            }
                            .onLongPressGesture(minimumDuration: 1.5 ) {
                                selecAluno = aluno
                               //aluno.nome = "Nome Long Press"
                            }
                        
                    }
                    .onDelete { indexSet in
                        for i in indexSet{
                            ctx.delete(alunos[i])
                        }
                    }
                    
                    
                }//List
                .overlay {
                    if alunos.isEmpty{
                        ContentUnavailableView("Sem Alunos", systemImage: "person.crop.square.on.square.angled")
                        
                    }
                }
                
                Button {
                    
                    selecAluno!.nome = "Novo Nome"
                    
                    selecAluno = nil
                    
                    
                } label: {
                    Text("Update Data")
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
            .navigationTitle("Lista de Aluno")
            
        }// NavigationStack
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Aluno.self)
}
