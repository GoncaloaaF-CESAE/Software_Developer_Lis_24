//
//  ContentView.swift
//  13_aula_Listas
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
     @State var lista =  [
        Alunos(nome: "João", idade: 20),
        Alunos(nome: "Maria", idade: 22),
        Alunos(nome: "Carlos", idade: 19),
        Alunos(nome: "Ana", idade: 21),
        Alunos(nome: "Pedro", idade: 23),
        Alunos(nome: "Beatriz", idade: 20),
        Alunos(nome: "Lucas", idade: 18),
        Alunos(nome: "Sofia", idade: 24),
        Alunos(nome: "Gabriel", idade: 22),
        Alunos(nome: "Isabela", idade: 19)
    ]
    
    @State var nomeAluno = ""
    @State var idadeAluno = ""
    var body: some View {
        VStack {
          
            List{
                ForEach(lista) { al in
                    Text(al.nome)
                }
            }
            VStack{
                
                HStack{
                    TextField("nome", text: $nomeAluno)
                        .textFieldStyle(.roundedBorder)
                    TextField("idade", text: $idadeAluno)
                        .textFieldStyle(.roundedBorder)
                }
                Button {
                    var al = Alunos(nome: nomeAluno, idade: Int(idadeAluno) ?? -1 )
                    lista.append(al)
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
