//
//  ListAlunoLineView.swift
//  20_swiftDataDemo
//
//  Created by Gonçalo Feliciano on 16/01/2025.
//

import SwiftUI

struct ListAlunoLineView: View {
    var aluno: Aluno
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(aluno.nome)
                    .font(.title)
                    .fontWeight(.bold)
                Text("\(aluno.nif)")
                    .font(.caption)
            }
           
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
    }
}

#Preview {
    ListAlunoLineView(aluno: Aluno(nif: "12321312", nome: "Nome", Turma: ""))
}
